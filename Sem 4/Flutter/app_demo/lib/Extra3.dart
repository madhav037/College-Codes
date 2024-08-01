import 'package:flutter/material.dart';

class Extra3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(
                  color: Colors.orange,
                )),
                Expanded(child: Column(
                  children: [
                    Expanded(child: Container(
                      color: Colors.pink,
                    )),
                    Expanded(child: Container(
                      color: Colors.orangeAccent,
                    ))
                  ],
                ),),
                Expanded(child: Container(
                  color: Colors.orange,
                )),
              ],
            ),
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(
                        color: Colors.teal,
                      )),
                      Expanded(child: Container(
                        color: Colors.blueGrey,
                      ))
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Column(
                        children: [
                          Expanded(child: Container(
                            color: Colors.red,
                          )),
                          Expanded(child: Container(
                            color: Colors.green,
                          )),
                          Expanded(child: Container(
                            color: Colors.blue,
                          ))
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          Expanded(child: Container(
                            color: Colors.redAccent,
                          )),
                          Expanded(child: Container(
                            color: Colors.greenAccent,
                          )),
                          Expanded(child: Container(
                            color: Colors.purpleAccent,
                          ))
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          Expanded(child: Container(
                            color: Colors.red,
                          )),
                          Expanded(child: Container(
                            color: Colors.green,
                          )),
                          Expanded(child: Container(
                            color: Colors.blue,
                          ))
                        ],
                      )),
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(
                        color: Colors.teal,
                      )),
                      Expanded(child: Container(
                        color: Colors.blueGrey,
                      ))
                    ],
                  )),
                ],
              )),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(
                  color: Colors.orange,
                )),
                Expanded(child: Column(
                  children: [
                    Expanded(child: Container(
                      color: Colors.pink,
                    )),
                    Expanded(child: Container(
                      color: Colors.orangeAccent,
                    ))
                  ],
                ),),
                Expanded(child: Container(
                  color: Colors.orange,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
