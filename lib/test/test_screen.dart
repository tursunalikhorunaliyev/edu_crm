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
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Row(
        children: [
          Spacer(),
          Column(
            children: [
              Spacer(),
              ButtonWidget(
                horizontalPadding: 12,
                verticalPadding: 12,
                text: "salom",
                containerColor: Color(0xFF5D5FEF),
              ),
              Spacer(),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
