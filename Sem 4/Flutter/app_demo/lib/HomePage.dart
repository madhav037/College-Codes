import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("APP", style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.cyan,
      ),
      body: Row(
        children: [
          Expanded(child: Column(
            children: [
              Expanded(child: Container(
                color: Colors.yellow,
              )),
              Expanded(child: Container(
                color: Colors.green,
              )),
              Expanded(child: Container(
                color: Colors.red,
              ))
            ],
          )),
          Expanded(child: Column(
            children: [
              Expanded(child: Container(
                color: Colors.red,
              )),
              Expanded(child: Container(
                color: Colors.orange,
              )),
              Expanded(child: Container(
                color: Colors.black,
              ))
            ],
          )),
          Expanded(child: Column(
            children: [
              Expanded(child: Container(
                color: Colors.amber,
              )),
              Expanded(child: Container(
                color: Colors.blue,
              )),
              Expanded(child: Container(
                color: Colors.purple,
              ))
            ],
          ))
        ],
      ),
    );
  }

}