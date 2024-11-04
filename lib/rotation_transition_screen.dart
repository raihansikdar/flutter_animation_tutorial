import 'package:flutter/material.dart';

class RotationTransitionScreen extends StatefulWidget {
  const RotationTransitionScreen({super.key});

  @override
  State<RotationTransitionScreen> createState() => _RotationTransitionScreenState();
}

class _RotationTransitionScreenState extends State<RotationTransitionScreen> with SingleTickerProviderStateMixin{

  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3)
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text("RotationTransition Example"),
      ),
     body: Center(
       child: RotationTransition(
         turns: animationController,
         child: FlutterLogo(size: 150,)
       ),
     ),
    );
  }
}