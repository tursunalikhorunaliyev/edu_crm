import 'package:edu_crm/presentation/view/parts/sub_subject_part.dart';
import 'package:edu_crm/presentation/view/screens/dash_board.dart';
import 'package:edu_crm/presentation/view/widgets/side_bar_animated_button.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: DashBoard(),
      ),
    );
  }
}
