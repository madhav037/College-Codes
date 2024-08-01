import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int x = 0;
  var img = Image.asset("assets/img/dice1.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: const Row(
      //     children: [
      //       Icon(
      //         Icons.games_outlined,
      //         color: Colors.white,
      //         size: 35,
      //       ),
      //       SizedBox(
      //         width: 25,
      //       ),
      //       Text(
      //         "Dice Rolled",
      //         style: TextStyle(
      //             color: Colors.white,
      //             fontWeight: FontWeight.bold,
      //             fontSize: 30),
      //       ),
      //     ],
      //   ),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              // Center(
              //   child: Container(
              //     padding: const EdgeInsets.all(5.0),
              //     height: 200,
              //     width: 200,
              //     color: Colors.black,
              //     child: img,
              //   ),
              // ),
              Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      x = Random().nextInt(6) + 1;
                      img = Image.asset("assets/img/dice$x.png");
                      print(x);
                    });
                  },
                  child: Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      height: 200,
                      width: 200,
                      color: Colors.black,
                      child: img,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      x = Random().nextInt(6) + 1;
                      img = Image.asset("assets/img/dice$x.png");
                      print(x);
                    });
                  },
                  child: const Text("Click to Dice Rolled")),
            ),
          )
        ],
      ),
    );
  }
}
