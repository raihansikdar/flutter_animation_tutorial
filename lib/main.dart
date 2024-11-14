import 'package:flutter/material.dart';
import 'package:flutter_animation_tutorial/animated_align_screen.dart';
import 'package:flutter_animation_tutorial/animated_container_screen.dart';
import 'package:flutter_animation_tutorial/animated_cross_fade_screen.dart';
import 'package:flutter_animation_tutorial/animated_opacity_screen.dart';
import 'package:flutter_animation_tutorial/animated_position_screen.dart';
import 'package:flutter_animation_tutorial/listview_animation_screen.dart';
import 'package:flutter_animation_tutorial/rotation_transition_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ListviewAnimationScreen(),

    );
  }
}


