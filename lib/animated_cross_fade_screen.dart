import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  const AnimatedCrossFadeScreen({super.key});

  @override
  State<AnimatedCrossFadeScreen> createState() => _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {

  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Cross Fade"),
        backgroundColor: Colors.grey.shade300,
      ),
    body: Center(
      child: GestureDetector(
           onTap: (){
             isTap = !isTap;
             setState(() {});
           },
        child: AnimatedCrossFade(
            firstChild: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            secondChild: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            crossFadeState: isTap ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration:const Duration(seconds: 3),
        ),
      ),
    ),
    );
  }
}