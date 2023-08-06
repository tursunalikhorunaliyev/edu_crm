import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:lottie/lottie.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("lottie/loading.json", width: 200, height: 200),
          ],
        ),
      ),
    );
  }
}
