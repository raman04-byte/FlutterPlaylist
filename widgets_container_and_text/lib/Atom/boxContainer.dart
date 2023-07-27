import 'package:flutter/material.dart';
import 'package:widgets_container_and_text/Atom/boxText.dart';

class BoxContainers extends StatefulWidget {
  const BoxContainers({super.key});

  @override
  State<BoxContainers> createState() => _BoxContainersState();
}

class _BoxContainersState extends State<BoxContainers> {
  String name = "Raman";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: Colors.amber[600], shape: BoxShape.rectangle),
      child:
         BoxText()
    );
  }
}
