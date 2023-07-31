import 'package:flutter/material.dart';

class CustomSideBarLineWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  const CustomSideBarLineWidget(
      {super.key, required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Inter",
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 18 / 1.5,
        decoration: isSelected ? TextDecoration.underline : TextDecoration.none,
      ),
    );
  }
}
