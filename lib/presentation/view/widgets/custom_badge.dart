import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 30,
          height: 10,
          color: Colors.amber,
        ),
      ),
    );
  }
}
