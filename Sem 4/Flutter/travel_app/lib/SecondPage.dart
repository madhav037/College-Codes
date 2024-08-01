import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/HomePage.dart';

class SecondClass extends StatelessWidget {
  const SecondClass({super.key});

  Widget placeCard(String area, String peopleCapacity, String placeName,
      Widget navigateTo, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      // decoration: BoxDecoration(border: ),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "$area SQFT",
                style: GoogleFonts.oldStandardTt(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "$peopleCapacity+ People Capacity",
                style: GoogleFonts.oldStandardTt(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  placeName,
                  style: GoogleFonts.oldStandardTt(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => navigateTo),
                  );
                },
                child: Container(
                  alignment: AlignmentDirectional.centerEnd,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Color.fromARGB(255, 222, 195, 160),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 195, 160),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 195, 160),
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
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "London, UK",
                        style: GoogleFonts.oldStandardTt(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "The capital of England and the United Kingdom, is a 21st-century city with history stretching.",
                        style: GoogleFonts.oldStandardTt(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "The iconic 'Big Ben' clock tower and Westminister Abbey.",
                        style: GoogleFonts.oldStandardTt(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top Listed",
                      style: GoogleFonts.oldStandardTt(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: [
                            placeCard("77,500", "160", "Avenue Park",
                                const HomePage(), context),
                            placeCard("30,500", "1200", "Solimo Ave 2",
                                const HomePage(), context),
                            placeCard("90,700", "1200", "Techno City",
                                const HomePage(), context),
                          ],
                        ),
                      ),
                    ),
                    // placeCard(
                    //     "77,500", "160", "Avenue Park", const HomePage(), context),
                    // placeCard("30,500", "1200", "Solimo Ave 2", const HomePage(),
                    //     context),
                    // placeCard(
                    //     "90,700", "1200", "Techno City", const HomePage(), context),
                  ],
                ),
                // Expanded(child: ,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
