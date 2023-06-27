import 'package:edu_crm/presentation/view/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tests extends StatelessWidget {
  const Tests({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              const SizedBox(width: 58),
              const Search(),
              const Spacer(),
              Container(
                width: 44,
                height: 44,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF1F5F9),
                ),
                child: Image.asset(
                  "assets/images/notification.png",
                  cacheWidth: 24,
                  cacheHeight: 24,
                ),
              ),
              const SizedBox(width: 16),
              Container(
                width: 44,
                height: 44,
                decoration: const BoxDecoration(
                  color: Color(0xFFF1F5F9),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  "assets/images/undov.png",
                  cacheWidth: 24,
                  cacheHeight: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  width: 1,
                  height: 58,
                  color: const Color(0xFFE2E8F0),
                ),
              ),
              Image.asset(
                "assets/images/profil_image.png",
                width: 36,
                height: 36,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Erik Brown",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color(0xFF40444D),
                  ),
                ),
              ),
              Image.asset(
                "assets/images/arrow_bottom.png",
                width: 8,
                height: 8,
              ),
              const SizedBox(width: 58),
            ],
          ),
        ),
      ),
    );
  }
}
