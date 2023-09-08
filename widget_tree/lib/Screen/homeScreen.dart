import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("This is showing an image"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/flutter.png'),
              // Icon(Icons.android,size: 40,color: Colors.green[300],)
              const Icon(
                Icons.android,
                size: 40,
                color: Color(0xFF03DAC6),
              )
            ],
          ),
        ));
  }
}
