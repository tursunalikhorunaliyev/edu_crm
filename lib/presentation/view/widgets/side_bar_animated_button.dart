import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';

class SideBarAnimatedButton extends StatefulWidget {
  final List<String> elements;
  final String icon;
  final String text;
  final double contentHeight;

  Function(int index)? onChanged;
  SideBarAnimatedButton({
    super.key,
    required this.elements,
    required this.icon,
    required this.text,
    required this.contentHeight,
    this.onChanged,
  });

  @override
  State<SideBarAnimatedButton> createState() => _SideBarAnimatedButtonState();
}

class _SideBarAnimatedButtonState extends State<SideBarAnimatedButton> {
  bool isSelected = false;
  int selectedIndex = 0;
  int onChange(int index) {
    return index;
  }

  @override
  void initState() {
    super.initState();
    onChange(selectedIndex) {
      widget.onChanged;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isSelected ? widget.contentHeight : (60 / 1.5),
      width: double.infinity,
      duration: const Duration(milliseconds: 400),
      curve: Curves.fastLinearToSlowEaseIn,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF5D5FEF) : Colors.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16 / 1.5,
            ),
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
                      fontSize: 14,
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
          const SizedBox(height: 11),
          Expanded(
            child: ListView.builder(
              itemCount: widget.elements.length,
              itemBuilder: (context, index) {
                Size size = (TextPainter(
                        text: TextSpan(
                          text: widget.elements[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Inter",
                            fontWeight: medium,
                            fontSize: 14,
                          ),
                        ),
                        maxLines: 1,
                        textScaleFactor: MediaQuery.of(context).textScaleFactor,
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
                      child: Row(
                        children: [
                          const SizedBox(width: 24 / 1.5 + 12),
                          selectedIndex == index
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.elements[index],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Inter",
                                        fontWeight: medium,
                                        fontSize: 14,
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
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
