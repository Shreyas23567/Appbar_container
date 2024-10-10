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
          title: const Text('Horizontal Pictures Scroller'),
          backgroundColor: Colors.amber,
        ),
        body: const HorizontalImageScroll(),
      ),
    );
  }
}

class HorizontalImageScroll extends StatelessWidget {
  const HorizontalImageScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          imageContainer(
              'https://teqip.in/wp-content/uploads/2022/12/HD-wallpaper-rashmika-mandanna-thumbnail.jpg'),
          imageContainer(
              'https://i.pinimg.com/originals/04/e3/c3/04e3c360f7b52d940581d20218068466.jpg'),
          imageContainer(
              'https://www.nayataaza.com/wp-content/uploads/2020/10/Kiara-Advani.jpg'),
          imageContainer(
              'https://i1.wp.com/www.socialnews.xyz/wp-content/uploads/2020/02/15/Actress-Shraddha-Kapoor-spotted-at-filmcity-HD-Gallery-16.jpg?fit=1707%2C2560&quality=90&zoom=1&ssl=1'),
          imageContainer(
              'https://www.fashionlady.in/wp-content/uploads/2018/07/sonali-bendre-in-hum-saath-saath-hain.jpg'),
        ],
      ),
    );
  }

  Widget imageContainer(String imageUrl) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 150,
      height: 300,
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
