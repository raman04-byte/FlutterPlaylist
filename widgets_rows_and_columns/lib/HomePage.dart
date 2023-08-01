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
        body: Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color(0xFFf4f4f4)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Upcoming Events"),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.local_post_office_rounded),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Row1"),
                      Spacer(),
                      Text("\$30000")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.local_post_office_rounded),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Row1"),
                      Spacer(),
                      Text("\$30000")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.local_post_office_rounded),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Row1"),
                      Spacer(),
                      Text("\$30000")
                    ],
                  ),
                  Row(
                    children: [
                      FlutterLogo(),
                      Expanded(child: Text("Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.")),
                      Expanded(child: Text("Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.")),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
