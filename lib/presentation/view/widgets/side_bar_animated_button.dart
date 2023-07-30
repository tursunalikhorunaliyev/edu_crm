import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';

class SideBarAnimetedButton extends StatefulWidget {
  final List<String> animatedList;
  final String icon;
  final String text;
  const SideBarAnimetedButton({
    super.key,
    required this.animatedList,
    required this.icon,
    required this.text,
  });

  @override
  State<SideBarAnimetedButton> createState() => _SideBarAnimetedButtonState();
}

class _SideBarAnimetedButtonState extends State<SideBarAnimetedButton> {
  bool isTap = false;
  int onSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isTap ? 147 : (48 / 1.5),
      width: double.infinity,
      duration: const Duration(milliseconds: 400),
      curve: Curves.fastLinearToSlowEaseIn,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isTap ? const Color(0xFF5D5FEF) : Colors.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10 / 1.5),
            child: InkWell(
              onTap: () {
                isTap = !isTap;
                setState(() {});
              },
              child: Row(
                children: [
                  Image.asset(
                    widget.icon,
                    width: 24 / 1.5,
                    height: 24 / 1.5,
                    color: isTap ? Colors.white : const Color(0xFF3B424A),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.text,
                    style: TextStyle(
                      color: isTap ? Colors.white : const Color(0xFF3B424A),
                      fontFamily: "Inter",
                      fontWeight: medium,
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(),
                  isTap
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
          Expanded(
            child: ListView.builder(
              itemCount: widget.animatedList.length,
              itemBuilder: (context, index) {
                Size size = (TextPainter(
                        text: TextSpan(
                          text: widget.animatedList[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Inter",
                            fontWeight: medium,
                            fontSize: 15,
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
                      onSelectedIndex = index;
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        children: [
                          const SizedBox(width: 24 / 1.5 + 12),
                          onSelectedIndex == index
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.animatedList[index],
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
                                  widget.animatedList[index],
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
