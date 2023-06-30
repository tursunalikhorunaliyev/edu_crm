import 'package:edu_crm/presentation/view/widgets/side_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Row(
        children: [
          SizedBox(
            width: 290,
            child: SideBarWidget(),
          ),
        ],
      ),
    );
  }
}
