import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KurslarWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  const KurslarWidget(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF40444D),
                ),
              ),
              const Icon(Icons.more_horiz, size: 20),
            ],
          ),
          const SizedBox(height: 26),
          Text(
            subTitle,
            style: GoogleFonts.inter(
              color: const Color(0xFF4D515A),
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 26),
          Container(
            width: double.infinity,
            height: 169,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.black12,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
