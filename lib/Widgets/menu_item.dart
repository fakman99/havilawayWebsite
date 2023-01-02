import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Extensions/constant.dart';

class MenuItems extends StatelessWidget {
  final String title;
  const MenuItems({
    required this.title,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(title.toUpperCase(),
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.8))),
      ),
    );
  }
}
