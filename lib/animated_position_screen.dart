import 'package:flutter/material.dart';

class AnimatedPositionScreen extends StatefulWidget {
  const AnimatedPositionScreen({super.key});

  @override
  State<AnimatedPositionScreen> createState() => _AnimatedPositionScreenState();
}

class _AnimatedPositionScreenState extends State<AnimatedPositionScreen> {

  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text("Animated Position"),
      ),
     body: Stack(
       children: [
         AnimatedPositioned(
           left: isTap ? 200 : 0,
           top: isTap ? 200 : 0,
           duration: Duration(seconds: 3),
           child: GestureDetector(
             onTap: (){
               isTap = !isTap;
               setState(() {});
             },
             child: Container(
               height: 200,
               width: 200,
               color: Colors.red,
             ),
           ),
         ),

         AnimatedPositioned(
           right: isTap ? 200 : 0,
           top: isTap ? 200 : 0,
           duration: Duration(seconds: 3),
           child: GestureDetector(
             onTap: (){
               isTap = !isTap;
               setState(() {});
             },
             child: Container(
               height: 200,
               width: 200,
               color: Colors.blue,
             ),
           ),
         ),
       ],
     ),
    );
  }
}
