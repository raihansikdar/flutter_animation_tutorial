import 'package:flutter/material.dart';

class AnimatedAlignScreen extends StatefulWidget {
  const AnimatedAlignScreen({super.key});

  @override
  State<AnimatedAlignScreen> createState() => _AnimatedAlignScreenState();
}

class _AnimatedAlignScreenState extends State<AnimatedAlignScreen> {

  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Align"),
        backgroundColor: Colors.grey.shade300,
      ),
      body: Center(
        child: AnimatedAlign(
          alignment: isTap ? Alignment.topLeft : Alignment.bottomRight,
          duration: const Duration(seconds: 3),
          child: GestureDetector(
            onTap: (){
              setState(() {
                isTap = !isTap;
              });
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}


