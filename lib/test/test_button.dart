import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//SideBarButton
class TestButton extends StatefulWidget {
  final String prefixIconName;
  final bool isNew;
  final bool isNotification;
  final int notificationCount;
  final String text;
  final double iconWidth;
  final double iconHeight;
  final double suffixIconHeight;
  final double borderRadius;
  final double horizontalPadding;
  final double suffixTextSize;
  final bool onTapped;
  const TestButton({
    super.key,
    this.suffixTextSize = 14 / 1.5,
    this.horizontalPadding = 10,
    this.borderRadius = 5,
    this.prefixIconName = "",
    this.isNew = false,
    this.isNotification = false,
    this.notificationCount = 0,
    this.text = "",
    this.iconWidth = 10,
    this.iconHeight = 10,
    this.suffixIconHeight = 20,
    this.onTapped = false,
  });

  @override
  State<TestButton> createState() => _TestButtonState();
}

class _TestButtonState extends State<TestButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 48 / 1.5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: widget.onTapped ? const Color(0xFF5D5FEF) : Colors.white,
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          padding: EdgeInsets.symmetric(horizontal: widget.horizontalPadding),
          child: Row(
            children: [
              widget.prefixIconName == ""
                  ? const SizedBox()
                  : Image.asset(
                      "assets/${widget.prefixIconName}",
                      width: widget.iconWidth,
                      height: widget.iconHeight,
                      color: widget.onTapped
                          ? Colors.white
                          : const Color(0xFF3B424A),
                    ),
              const SizedBox(
                width: 12 / 1.5,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  fontFamily: "Inter",
                  color:
                      widget.onTapped ? Colors.white : const Color(0xFF3B424A),
                  fontWeight: medium,
                ),
              ),
              const Spacer(),
              widget.isNew
                  ? Container(
                      width: 49 / 1.5,
                      height: widget.suffixIconHeight,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: widget.isNew
                            ? widget.onTapped
                                ? Colors.white
                                : const Color(0xFF10B981)
                            : const Color(0xFF5D5FEF),
                      ),
                      child: Text(
                        widget.isNotification
                            ? "+${widget.notificationCount}"
                            : "new",
                        style: TextStyle(
                          color: widget.onTapped
                              ? const Color(0xFF10B981)
                              : Colors.white,
                          fontFamily: "Inter",
                          fontSize: widget.suffixTextSize,
                        ),
                      ),
                    )
                  : widget.isNotification
                      ? Container(
                          width: 49 / 1.5,
                          height: widget.suffixIconHeight,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: widget.onTapped
                                ? Colors.white
                                : const Color(0xFF5D5FEF),
                          ),
                          child: Text(
                            widget.isNotification
                                ? "+${widget.notificationCount}"
                                : "new",
                            style: TextStyle(
                              color: widget.onTapped
                                  ? const Color(0xFF5D5FEF)
                                  : Colors.white,
                              fontFamily: "Inter",
                              fontSize: widget.suffixTextSize,
                            ),
                          ),
                        )
                      : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
