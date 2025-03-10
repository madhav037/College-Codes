import 'package:flutter/material.dart';

class Extra4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.green,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.greenAccent,
                  ))
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.orangeAccent,
                  )),
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            color: Colors.pinkAccent,
                          )),
                          Expanded(
                              child: Container(
                            color: Colors.blueAccent,
                          )),
                          Expanded(
                              child: Container(
                            color: Colors.black,
                          )),
                        ],
                      )),
                ],
              )),
              Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                            color: Colors.green,
                          )),
                      Expanded(
                          child: Container(
                            color: Colors.greenAccent,
                          ))
                    ],
                  )),
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Container(
                        color: Colors.pinkAccent,
                      )),
                      Expanded(child: Container(
                        color: Colors.orangeAccent,
                      ))
                    ],
                  )),
              Expanded(
                  child: Column(
                    children: [
                      Expanded(child: Row(
                        children: [
                          Expanded(child: Container(
                            color: Colors.yellow,
                          )),
                          Expanded(child: Container(
                            color: Colors.yellowAccent,
                          )),
                          Expanded(child: Container(
                            color: Colors.red,
                          )),
                        ],
                      )),
                      Expanded(child: Container(
                        color: Colors.pinkAccent,
                      )),
                      Expanded(child: Container(
                        color: Colors.yellowAccent,
                      )),
                    ],
                  )),
              Expanded(
                  child: Column(
                    children: [
                      Expanded(child: Row(
                        children: [
                          Expanded(flex:2,child: Container(
                            color: Colors.redAccent,
                          )),
                          Expanded(child: Container(
                            color: Colors.purple,
                          ))
                        ],
                      )),
                      Expanded(child: Row(
                        children: [
                          Expanded(child: Container(
                            color: Colors.blueGrey,
                          )),
                          Expanded(flex:2,child: Container(
                            color: Colors.grey,
                          ))
                        ],
                      )),
                    ],
                  )),
            ],
          )),
        ],
      ),
    );
  }
}
