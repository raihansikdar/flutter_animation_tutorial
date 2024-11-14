import 'package:flutter/material.dart';

class ListviewAnimationScreen extends StatefulWidget {
  const ListviewAnimationScreen({super.key});

  @override
  State<ListviewAnimationScreen> createState() => _ListviewAnimationScreenState();
}

class _ListviewAnimationScreenState extends State<ListviewAnimationScreen> {

  bool startAnimation = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_){
      startAnimation = true;
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("ListView Animation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context,index){
              return AnimatedContainer(
                duration: Duration(milliseconds: 1200 + (index * 320)),
                curve: Curves.easeInOutCubic,
                transform: Matrix4.translationValues(0, startAnimation ? 0 : 600, 0),
                child: Card(
                  child: ListTile(
                    leading: const FlutterLogo(),
                    title: Text("List view animation $index"),
                    subtitle: const Text("12345655"),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
