import 'package:flutter/material.dart';

class FlexiExpanded extends StatefulWidget {
  const FlexiExpanded({super.key});

  @override
  State<FlexiExpanded> createState() => _FlexiExpandedState();
}

class _FlexiExpandedState extends State<FlexiExpanded> {
  @override
  Widget build(BuildContext context) {
    // Expanded Widget
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Expanded Widget'),
    //   ),
    //   body: Center(
    //     child: Row(
    //       children: [
    //         Container(
    //           width: 40,
    //           padding: const EdgeInsets.all(10),
    //           alignment: Alignment.center,
    //           color: Colors.pink[300],
    //           child: const Icon(Icons.home),
    //         ),
    //         Expanded(
    //           child: Container(
    //             width: 50,
    //             padding: const EdgeInsets.all(10),
    //             alignment: Alignment.center,
    //             color: Colors.green[300],
    //             child: const Icon(Icons.abc),
    //           ),
    //         ),
    //         Container(
    //           width: 40,
    //           padding: const EdgeInsets.all(10),
    //           alignment: Alignment.center,
    //           color: Colors.amber[300],
    //           child: const Icon(Icons.home),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    // Flexible widget
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            children: [
              Flexible(
                flex: 2,
                fit: FlexFit.loose,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink[300],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green[300],

                  ),
                  child: const Icon(Icons.water),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
