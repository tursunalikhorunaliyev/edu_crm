import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 372,
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5FA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          SizedBox(width: 12),
          Icon(
            Icons.search,
            size: 24,
            color: Color(0xFF64748B),
          ),
          SizedBox(width: 6),
          Text(
            "search...",
            style: TextStyle(
              color: Color(0xFFCACEDC),
            ),
          )
        ],
      ),
    );
  }
}
