import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';

class PathWidget extends StatelessWidget {
  final List<String> elements;
  const PathWidget({super.key, required this.elements});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: elements.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Row(
          children: [
            index == 0 && index != elements.length
                ? const SizedBox()
                : Image.asset(
                    "images/Chevron_Right.png",
                    width: 24 / 1.5,
                    height: 24 / 1.5,
                  ),
            Text(
              elements[index],
              style: const TextStyle(
                fontFamily: "Inter",
                fontSize: 10,
                fontWeight: FontWeight.normal,
                color: Color(0xFF4D515A),
              ),
            )
          ],
        );
      },
    );
  }
}
