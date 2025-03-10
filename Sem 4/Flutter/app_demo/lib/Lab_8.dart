import 'package:flutter/material.dart';

class Lab_8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/img/img.jpg",
            fit: BoxFit.cover,
          ),
          Image.network("https://w0.peakpx.com/wallpaper/96/635/HD-wallpaper-best-one-piece-iphone-one-piece-anime-thumbnail.jpg"),
        ],
      ),
    );
  }
}
