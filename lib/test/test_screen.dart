import 'package:edu_crm/presentation/view/widgets/button_widget.dart';
import 'package:edu_crm/presentation/view/widgets/kurslar_widget.dart';
import 'package:edu_crm/presentation/view/widgets/side_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: SizedBox(
          child: SizedBox(
            width: 99,
            height: 44,
            child: ButtonWidget(
              buttonWithRightIcon: true,
            ),
          ),
        ),
      ),
    );
  }
}
