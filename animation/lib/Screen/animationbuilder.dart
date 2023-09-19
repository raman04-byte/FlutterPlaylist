import 'package:flutter/material.dart';

class AdvanceAnimationBuilder extends StatefulWidget {
  const AdvanceAnimationBuilder({super.key});

  @override
  State<AdvanceAnimationBuilder> createState() =>
      _AdvanceAnimationBuilderState();
}

class _AdvanceAnimationBuilderState extends State<AdvanceAnimationBuilder>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 8))
          ..repeat();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation Builder')),
      body: Center(
          child: AnimatedBuilder(
        animation: _controller!,
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.yellowAccent,
          ),
          child: const Icon(Icons.abc),
        ),
        builder: (context, child) {
          return Transform.rotate(
            angle: _controller!.value * 5.2 * 3.14,
            child: child,
          );
        },
      )),
    );
  }
}

// AnimatedBuilder({
//   Key? key,
//   required Listenable animation,
//   required this.builder,
//   this.child
// })