import 'package:flutter/material.dart';

class EduDataPickerField extends StatelessWidget {
  final String text;
  final String icon;
  final double height;
  final double width;
  const EduDataPickerField({
    super.key,
    required this.text,
    this.icon = "assets/calendar.png",
    this.height = 40,
    this.width = 250,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
          color: const Color(0xFFD0D5DD),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontFamily: "Inter",
                fontSize: 15,
                color: Color(0xFF344054),
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: height,
              width: height,
              decoration: const BoxDecoration(
                color: Color(0xFFDCE0E4),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(4),
                  topRight: Radius.circular(4),
                ),
              ),
              child: Image.asset(
                icon,
                width: 20,
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
