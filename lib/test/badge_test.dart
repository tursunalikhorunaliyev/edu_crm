import 'package:edu_crm/presentation/view/widgets/custom_badge.dart';
import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';

class BadgeTestScreen extends StatelessWidget {
  const BadgeTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: double.infinity,
          child: Row(
            children: [
              const SizedBox(width: 50),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBadge(
                    text: "Working on",
                    color: color1,
                    textColor: textcolor1,
                    hasIcon: false,
                    textSize: 16,
                  ),
                  CustomBadge(
                    text: "Working on",
                    color: color1,
                    textColor: textcolor1,
                    hasIcon: false,
                    textSize: 20,
                  ),
                  CustomBadge(
                    text: "Working on",
                    color: color1,
                    textColor: textcolor1,
                    hasIcon: true,
                    textSize: 20,
                  ),
                ],
              ),
              const SizedBox(width: 50),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBadge(
                    text: "Existing news",
                    color: color2,
                    textColor: textcolor2,
                    hasIcon: false,
                    textSize: 16,
                  ),
                  CustomBadge(
                    text: "Existing news",
                    color: color2,
                    textColor: textcolor2,
                    hasIcon: false,
                    textSize: 20,
                  ),
                  CustomBadge(
                    text: "Existing news",
                    color: color2,
                    textColor: textcolor2,
                    hasIcon: true,
                    textSize: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
