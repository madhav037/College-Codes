import 'package:flutter/material.dart';

class Bday extends StatefulWidget {
  @override
  State<Bday> createState() => _BdayState();
}

class _BdayState extends State<Bday> {
  TextEditingController madho = TextEditingController();
  String text = "";
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

          Center(child: Text(text, style: const TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
            fontSize: 40
          )),),
          TextField(
            controller: madho,
            onChanged: (value) {
              setState(() {
                text = madho.text;
              });
            },
          ),
        ],
      ),
    );
  }
}
