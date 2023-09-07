import 'package:flutter/material.dart';

class Oriten extends StatefulWidget {
  const Oriten({super.key});

  @override
  State<Oriten> createState() => _OritenState();
}

class _OritenState extends State<Oriten> {
  Widget _portraitMode() {
    return const Stack(
      fit: StackFit.expand,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Portrait Mode",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.mobile_friendly,
              size: 100,
            ),
          ],
        )
      ],
    );
  }

  Widget _landscapeMode() {
    return const Stack(
      fit: StackFit.expand,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Landscape Mode",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.laptop_windows,
              size: 100,
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientation'),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if(orientation==Orientation.portrait){
            return _portraitMode();
          }
          return _landscapeMode();
        },
      ),
    );
  }
}
