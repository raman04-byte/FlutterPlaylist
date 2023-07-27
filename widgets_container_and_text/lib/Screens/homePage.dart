import 'package:flutter/material.dart';
import 'package:widgets_container_and_text/Atom/boxContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "Raman";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BoxContainers(),
            BoxContainers(),
            BoxContainers(),
            BoxContainers(),
            BoxContainers(),
            BoxContainers(),
            BoxContainers(),
            BoxContainers(),
          ],
        ),
      ),
    );
  }
}
