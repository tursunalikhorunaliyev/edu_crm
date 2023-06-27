import 'package:flutter/widgets.dart';

class TextPlusWidget extends StatelessWidget {
  const TextPlusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "",
          style: TextStyle(),
        )
      ],
    );
  }
}
