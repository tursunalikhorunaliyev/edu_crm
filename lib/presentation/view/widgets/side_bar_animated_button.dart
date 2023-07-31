import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';

class SideBarAnimatedButton extends StatefulWidget {
  final List<String> elements;
  final String icon;
  final String text;
  final double contentHeight;
  final Function(int index)? onChange;
  const SideBarAnimatedButton({
    super.key,
    required this.elements,
    required this.icon,
    required this.text,
    required this.contentHeight,
    this.onChange,
  });

  @override
  State<SideBarAnimatedButton> createState() => _SideBarAnimatedButtonState();
}

class _SideBarAnimatedButtonState extends State<SideBarAnimatedButton> {
  int onChange(int index) {
    return index;
  }

  @override
  void initState() {
    super.initState();
    onChange(selectedIndex) {
      widget.onChange;
    }
  }

  bool isSelected = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isSelected ? widget.contentHeight : (70 / 1.5),
      width: double.infinity,
      duration: const Duration(milliseconds: 400),
      curve: Curves.bounceOut,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF5D5FEF) : Colors.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20 / 1.5),
            child: InkWell(
              onTap: () {
                isSelected = !isSelected;
                setState(() {});
              },
              child: Row(
                children: [
                  Image.asset(
                    widget.icon,
                    width: 24 / 1.5,
                    height: 24 / 1.5,
                    color: isSelected ? Colors.white : const Color(0xFF3B424A),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.text,
                    style: TextStyle(
                      color:
                          isSelected ? Colors.white : const Color(0xFF3B424A),
                      fontFamily: "Inter",
                      fontWeight: medium,
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(),
                  isSelected
                      ? Image.asset(
                          "assets/images/Chevron_Down_White.png",
                          width: 24 / 1.5,
                          height: 24 / 1.5,
                        )
                      : Image.asset(
                          "assets/images/Chevron_Down.png",
                          width: 24 / 1.5,
                          height: 24 / 1.5,
                          color: const Color(0xFF3B424A),
                        ),
                ],
              ),
            ),
          ),
          isSelected
              ? SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    children: List.generate(widget.elements.length, (index) {
                      Size size = (TextPainter(
                              text: TextSpan(
                                text: widget.elements[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Inter",
                                  fontWeight: medium,
                                  fontSize: 15,
                                ),
                              ),
                              maxLines: 1,
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              textDirection: TextDirection.ltr)
                            ..layout())
                          .size;
                      return MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            selectedIndex = index;
                            setState(() {});
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: selectedIndex == index
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.elements[index],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Inter",
                                          fontWeight: medium,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: size.width,
                                        color: Colors.white,
                                      ),
                                    ],
                                  )
                                : Text(
                                    widget.elements[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Inter",
                                      fontWeight: medium,
                                      fontSize: 15,
                                    ),
                                  ),
                          ),
                        ),
                      );
                    }),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
