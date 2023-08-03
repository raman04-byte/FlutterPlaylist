import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  final String text;
  const HomePage({super.key, required this.text});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          widget.text,
          style: GoogleFonts.indieFlower(
            fontSize: 30,
            wordSpacing: 50,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
