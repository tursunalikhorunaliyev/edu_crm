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

              image: "http:192.168.1.26:8080/api/image/get?id=19",
              height: 200,
              width: 300,
            ),
            Text("Salom"),
          ],
        ),
      ),
    );
  }
}
