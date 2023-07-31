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
                    width: 24.6,
                    height: 24.6,
                  ),
            Text(
              elements[index],
              style: TextStyle(
                fontFamily: "Inter",
                fontWeight: index == elements.length - 1
                    ? FontWeight.bold
                    : FontWeight.normal,
                color: index == elements.length - 1
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : const Color(0xFF4D515A),
              ),
            )
          ],
        );
      },
    );
  }
}
