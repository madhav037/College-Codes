import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/About.dart';
import 'package:travel_app/SecondPage.dart';
import 'package:travel_app/menu_bar.dart';
import 'package:travel_app/spaces.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget imageCard(
      String imageString, String type, String city, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(imageString),
          ),
          Column(
            children: [
              Text(
                textAlign: TextAlign.start,
                type,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              Text(
                textAlign: TextAlign.start,
                city,
                style: GoogleFonts.oldStandardTt(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return WillPopScope(
    //   onWillPop: () async {
    //     // Disable the back button
    //     return false;
    //   },
    // child:
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        title: Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "Avicii",
                  style: GoogleFonts.oldStandardTt(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            const Icon(
              Icons.search,
              color: Colors.black,
              size: 25,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Premium Project",
                          style: GoogleFonts.oldStandardTt(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                        const Icon(Icons.drag_handle)
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Deliver Great to Clients.",
                      style: GoogleFonts.oldStandardTt(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 50,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.normal),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return imageCard("assets/img/newYork.jpg", "Commerical",
                    "New York", context);
              },
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              height: 100,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const SecondClass()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(fontSize: 15),
                  ),
                ),
                child: const Text("View All"),
              ),
            ),
          ),
        ],
      ),
      drawer: Menu(),
    );
  }
}

//Scaffold(
//       backgroundColor: Theme.of(context).primaryColor,
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).primaryColor,
//         title: const Row(
//           children: [
//             Icon(
//               Icons.menu,
//               color: Colors.black,
//               size: 25,
//             )
//           ],
//         ),
//
//       ),
//     );
