import 'package:flutter/widgets.dart';

class TextPlusWidget extends StatelessWidget {
  final String text;
  final String iconPath;
  const TextPlusWidget({super.key, required this.text, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF7B8190),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Image.asset(
          "images/$iconPath",
          width: 20.5,
          height: 20.5,
        ),
      ],
    );
  }
}
