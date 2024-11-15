import 'package:flutter/material.dart';

class GridViewAnimationScreen extends StatefulWidget {
  const GridViewAnimationScreen({super.key});

  @override
  State<GridViewAnimationScreen> createState() => _GridViewAnimationScreenState();
}

class _GridViewAnimationScreenState extends State<GridViewAnimationScreen> {
  bool startAnimation = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("GridView Scale Animation"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 3 / 2,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 1000 + (index * 200)),
            //curve: Curves.bounceOut,
            transform: Matrix4.identity()..scale(startAnimation ? 1.0 : 0.5),
            child: Card(
              elevation: 5,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FlutterLogo(),
                    Text("Index name $index")
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
