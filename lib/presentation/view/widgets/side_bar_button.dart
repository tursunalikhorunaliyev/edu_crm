import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';

class SideBarButton extends StatelessWidget {
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

  const SideBarButton({
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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48 / 1.5,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        children: [
          prefixIconName == ""
              ? const SizedBox()
              : Image.asset(
                  "assets/$prefixIconName",
                  width: iconWidth,
                  height: iconHeight,
                  color: const Color(0xFF3B424A),
                ),
          const SizedBox(
            width: 12 / 1.5,
          ),
          Text(
            text,
            style: const TextStyle(
              fontFamily: "Inter",
              color: Color(0xFF3B424A),
              fontWeight: medium,
            ),
          ),
          const Spacer(),
          isNew || isNotification
              ? Container(
                  width: 49 / 1.5,
                  height: suffixIconHeight,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: isNew
                        ? const Color(0xFF10B981)
                        : const Color(0xFF5D5FEF),
                  ),
                  child: Text(
                    isNotification ? "+$notificationCount" : "new",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Inter",
                      fontSize: suffixTextSize,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
