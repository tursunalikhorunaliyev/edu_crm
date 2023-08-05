import 'dart:js';

import 'package:cached_network_image/cached_network_image.dart';
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
            color: const Color(0xFFB4BFCD).withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 2,
            offset: const Offset(2, 3), // changes position of shadow
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
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Image.asset(
                    "images/menu.png",
                    width: 20 / 1.2,
                    height: 20 / 1.2,
                  ),
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
              alignment: Alignment.center,
              height: 160 / 1.2,
              width: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    imageUrl,
                    headers: {"ngrok-skip-browser-warning": "any"},
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
