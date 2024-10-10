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
          title: const Text('Two containers'),
          centerTitle: true,
          backgroundColor:Colors.yellow ,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 200,
                height: 100,
                color: Colors.black,
              ),
              const SizedBox(height: 20),
              Container(
                width: 200,
                height: 100,
                color: Colors.lime,
              )
            ],
          ),
        ),
      ),
    );
  }
}