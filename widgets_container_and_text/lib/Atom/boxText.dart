import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxText extends StatefulWidget {
  const BoxText({super.key});

  @override
  State<BoxText> createState() => _BoxTextState();
}

class _BoxTextState extends State<BoxText> {
  String name = "William";
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          backgroundColor: Colors.blueAccent,
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
