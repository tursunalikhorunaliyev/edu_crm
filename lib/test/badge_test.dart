import 'package:edu_crm/presentation/view/widgets/custom_badge.dart';
import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';

class BadgeTestScreen extends StatelessWidget {
  const BadgeTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomBadge(
              color: color1,
              text: "Working on",
              isPes: true,
            ),
          ],
        ),
      ),
    );
  }
}
