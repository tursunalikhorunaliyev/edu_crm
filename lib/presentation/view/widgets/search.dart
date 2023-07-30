import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 372 / 1.5,
      height: 48 / 1.5,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5FA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 12 / 1.5),
          const Icon(
            Icons.search,
            size: 24 / 1.5,
            color: Color(0xFF64748B),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: GoogleFonts.inter(
                    color: const Color(0xFFCACEDC),
                  ),
                  border:
                      const UnderlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
