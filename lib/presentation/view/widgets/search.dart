import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      width: 372 / 1.5,
      height: 60 / 1.5,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5FA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.search,
            size: 32 / 1.5,
            color: Color(0xFF64748B),
          ),
          Expanded(
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(fontSize: 13),
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 17, horizontal: 8),
                hintText: "Search...",
                hintStyle: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14,
                  color: Color(0xFFCACEDC),
                ),
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          )
        ],
      ),
    );
  }
}
