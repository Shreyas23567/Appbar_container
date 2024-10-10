import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Colorfull Containers'),
        ),
        body: const ColorfulContainersScreen(),
      ),
    );
  }
}

class ColorfulContainersScreen extends StatelessWidget {
  const ColorfulContainersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(10, (index) {
          return Container(
            margin: const EdgeInsets.all(10),
            height: 100,
            color: getColor(index),
            child: Center(
              child: Text(
                'Container ${index + 1}',
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          );
        }),
      ),
    );
  }
}

Color getColor(int index) {
  List<Color> colors = [
    Colors.black,
    Colors.blue,
    Colors.grey,
    Colors.pink,
    Colors.purple,
    Colors.red,
    Colors.yellow,
    Colors.cyan,
    Colors.indigo,
    Colors.teal,
  ];
  return colors[index % colors.length];
}
