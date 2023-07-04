import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  final Color color;
  final String text;
  final bool isPes;
  const CustomBadge({
    super.key,
    required this.color,
    required this.text,
    this.isPes = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            isPes
                ? Image.asset(
                    "assets/images/pensilk.png",
                    cacheHeight: 24,
                    height: 24,
                  )
                : const SizedBox(),
            Text(
              text,
              style: TextStyle(
                color: textcolor1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
