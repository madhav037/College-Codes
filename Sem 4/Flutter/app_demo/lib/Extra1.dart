import 'package:flutter/material.dart';

class Extra1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(
            color: Colors.amber,
          )),
          Expanded(flex : 3,child: Row(
            children: [
              Expanded(flex:2,child: Container(
                color: Colors.deepPurple,
              )),
              Expanded(child: Column(
                children: [
                  Expanded(child: Container(
                    color: Colors.red,
                  )),
                  Expanded(child: Container(
                    color: Colors.pink,
                  ))
                ],
              ))
            ],
          )),
          Expanded(flex : 2,child: Row(
            children: [
              Expanded(child: Container(
                color: Colors.brown,
              )),
              Expanded(child: Container(
                color: Colors.orange,
              )),
              Expanded(child: Container(
                color: Colors.green,
              ))
            ],
          )),
        ],
      ),
    );
  }
  
}