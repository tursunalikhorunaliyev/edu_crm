import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';

class SubjectCard extends StatelessWidget {
  final double width;
  final String text;
  final String longText;
  final String imageUrl;
  const SubjectCard({
    super.key,
    required this.width,
    required this.text,
    required this.longText,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(1, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: semiBold,
                    fontSize: 16,
                    color: Color(0xFF40444D),
                  ),
                ),
                Image.asset(
                  "images/menu.png",
                  width: 20 / 1.2,
                  height: 20 / 1.2,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 26 / 1.2),
              child: Text(
                longText,
                style: const TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w400,
                  fontSize: 16 / 1.2,
                  color: Color(0xFF40444D),
                ),
              ),
            ),
            Container(
              width: 314 / 1.2,
              height: 160 / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                  image: NetworkImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
