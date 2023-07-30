import 'package:edu_crm/presentation/view/widgets/search.dart';
import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:edu_drop_down/edu_drop_down.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 38, left: 30),
      child: Row(
        children: [
          const Search(),
          const Spacer(),
          Container(
            width: 44 / 1.7,
            height: 44 / 1.7,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF1F5F9),
            ),
            child: Image.asset(
              "assets/images/notification.png",
              width: 24 / 1.7,
              height: 24 / 1.7,
            ),
          ),
          const SizedBox(width: 16),
          Container(
            width: 44 / 1.7,
            height: 44 / 1.7,
            decoration: const BoxDecoration(
              color: Color(0xFFF1F5F9),
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              "assets/images/undov.png",
              width: 24 / 1.7,
              height: 24 / 1.7,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Container(
              width: 1,
              height: 58 / 1.5,
              color: const Color(0xFFE2E8F0),
            ),
          ),
          EduDropDown(
            elements: eduDropDownModelList,
            width: 170,
            contentGap: 24,
          )
        ],
      ),
    );
  }
}
