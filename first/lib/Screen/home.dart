import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning Buttons and Gestures"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // ElevatedButton(
            //     onPressed: () {
            //       print("You are pressing the button");
            //     },
            //     child: const Text("Button"))
            ElevatedButton(
              onPressed: () {
                print("You are pressing the button");
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                if (kDebugMode) {
                  print("You are pressing the button");
                }
              },
              onDoubleTap: () {
                if (kDebugMode) {
                  print("You are 2x pressing the button");
                }
              },
              onLongPress: () {
                if (kDebugMode) {
                  print("You are long pressing the button");
                }
              },
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: const LinearGradient(
                        colors: [Colors.indigo, Colors.blueAccent]),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          offset: Offset(2.0, 2.0))
                    ]),
                alignment: Alignment.center,
                child: const Text(
                  "Container",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
