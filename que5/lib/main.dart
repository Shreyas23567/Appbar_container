import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  get width => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Networking Images'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://tse4.mm.bing.net/th?id=OIP.W6LjkZUJg8DuvJRERSSFSwHaJT&pid=Api&P=0&h=180',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              Image.network(
                'https://tse4.mm.bing.net/th?id=OIP.W6LjkZUJg8DuvJRERSSFSwHaJT&pid=Api&P=0&h=180',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              Image.network(
                'https://tse4.mm.bing.net/th?id=OIP.W6LjkZUJg8DuvJRERSSFSwHaJT&pid=Api&P=0&h=180',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
