import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageNetwork(
              image:
                  "https://5b63-84-54-80-19.ngrok-free.app/api/image/get?id=19",
              width: 50,
              height: 20,
            ),
            const Text("Salom"),
          ],
        ),
      ),
    );
  }
}
