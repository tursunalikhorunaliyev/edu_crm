import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SidebarLineWidget extends StatelessWidget {
  final String firstIcon;
  final bool isNew;
  final bool isNotification;
  final int notiCount;
  final String text;
  const SidebarLineWidget({
    super.key,
    required this.firstIcon,
    this.isNew = false,
    this.isNotification = false,
    this.notiCount = 0,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      alignment: Alignment.center,
      child: Row(
        children: [
          Image.asset(
            "images/$firstIcon",
            width: 24,
            height: 24,
          ),
          const SizedBox(
            width: 12,
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
                  height: 23,
                  padding: const EdgeInsets.only(
                    top: 3,
                    bottom: 4,
                    right: 10,
                    left: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: isNew
                        ? const Color(0xFF10B981)
                        : const Color(0xFF5D5FEF),
                  ),
                  child: Text(
                    isNotification ? "+$notiCount" : "new",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
