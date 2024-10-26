import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {


  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Opacity"),
        backgroundColor: Colors.grey.shade300,
      ),
     body: Center(
       child: GestureDetector(
         onTap: (){
           setState(() {
             isTap = !isTap;
           });
         },
         child: AnimatedOpacity(
           opacity: isTap ? 1 : 0.2,
           duration: const Duration(seconds: 3),
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
