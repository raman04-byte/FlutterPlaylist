import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Media extends StatefulWidget {
  const Media({super.key});

  @override
  State<Media> createState() => _MediaState();
}

class _MediaState extends State<Media> {


  @override
  Widget build(BuildContext context) {
  double height=MediaQuery.of(context).size.height;
  double textFont=height/ 20;
  // double width=MediaQuery.of(context).size.width; 
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              // style: TextStyle(
              //   fontSize: height/ 20,
              // ),
            Text(
              "Hello this is a text",
              style: GoogleFonts.rubikIso(
                fontSize: textFont,
                color: Colors.green[300]
              )
            ),
            Text(
              "Hello this is a text",
              style: GoogleFonts.rubikIso(
              fontSize: textFont,
                color: Colors.green[300]
              )
            ),
            Text(
              "Hello this is a text",
              style: GoogleFonts.rubikIso(
                fontSize: textFont,
                color: Colors.green[300]
              )
            ),
          ],
        ),
      ),
    );
  }
}
