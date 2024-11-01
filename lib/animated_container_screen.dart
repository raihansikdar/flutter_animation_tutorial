import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {

  double boxHeight = 150;
  double boxWidth = 150;
  bool isTap = false;
  Color color = Colors.red;
  void startAnimation(){
    setState(() {
      isTap = !isTap;
      boxHeight = isTap ? 300 : 150;
      boxWidth = isTap ? 300: 150;
      color = isTap ? Colors.blue : Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
        backgroundColor: Colors.grey.shade300,
      ),
     body: Center(
       child: GestureDetector(
         onTap: (){
           startAnimation();
         },
         child: AnimatedContainer(
           duration: const Duration(seconds: 1),
           height: boxHeight,
           width: boxWidth,
           color: color,
           curve: Curves.bounceOut,
         ),
       ),
     ),
    );
  }
}
