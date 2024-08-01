import 'package:flutter/material.dart';

class Extra2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                  )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.deepPurple,
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.purple,
                      ))
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.purple,
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.amberAccent,
                      ))
                    ],
                  ))
                ],
              ))
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.orange,
              )),
              Expanded( flex: 2,
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Expanded(
                            child: Container(
                          color: Colors.orange,
                        )),
                        Expanded(
                            child: Container(
                          color: Colors.blue,
                        )),
                        Expanded(
                            child: Container(
                          color: Colors.pinkAccent,
                        ))
                      ],
                    )),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                              child: Container(
                            color: Colors.red,
                          )),
                          Expanded(
                              child: Container(
                            color: Colors.blueGrey,
                          )),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Expanded(
                            child: Container(
                          color: Colors.orange,
                        )),
                        Expanded(
                            child: Container(
                          color: Colors.blue,
                        )),
                        Expanded(
                            child: Container(
                          color: Colors.yellow,
                        ))
                      ],
                    )),

                    // Expanded(child: child)
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pink,
                ),
              )
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blueGrey,
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
