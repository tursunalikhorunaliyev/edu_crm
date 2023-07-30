import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBarButton extends StatelessWidget {
  final String firstIcon;
  final bool isNew;
  final bool isNotification;
  final int notiCount;
  final String text;
  final double iconWidth;
  final double iconHeight;
  final double rightIconHeigth;
  final double borderRadius;
  final double horizontalPadding;
  final double rightTextSize;
  const SideBarButton({
    super.key,
    this.rightTextSize = 14 / 1.5,
    this.horizontalPadding = 10,
    this.borderRadius = 5,
    this.firstIcon = "",
    this.isNew = false,
    this.isNotification = false,
    this.notiCount = 0,
    this.text = "",
    this.iconWidth = 10,
    this.iconHeight = 10,
    this.rightIconHeigth = 20,
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
          firstIcon == ""
              ? const SizedBox()
              : Image.asset(
                  "assets/$firstIcon",
                  width: 24 / 1.5,
                  height: 24 / 1.5,
                  color: const Color(0xFF3B424A),
                ),
          const SizedBox(
            width: 12 / 1.5,
          ),
          Text(
            text,
            style: GoogleFonts.inter(
              color: const Color(0xFF3B424A),
            ),
          ),
          const Spacer(),
          isNew || isNotification
              ? Container(
                  width: 49 / 1.5,
                  height: 23 / 1.5,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: isNew
                        ? const Color(0xFF10B981)
                        : const Color(0xFF5D5FEF),
                  ),
                  child: Text(
                    isNotification ? "+$notiCount" : "new",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: rightTextSize,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
