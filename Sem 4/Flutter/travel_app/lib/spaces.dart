import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/HomePage.dart';

class Spaces extends StatelessWidget {
  Widget card(String imagePath, String placeName, String area,
      String peopleCapacity, Widget pathToSpace, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(imagePath),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              "$area SQFT",
              style: GoogleFonts.oldStandardTt(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "$peopleCapacity+ People Capacity",
              style: GoogleFonts.oldStandardTt(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            )
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
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => pathToSpace),
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
                  color: Color.fromARGB(255, 152, 145, 138),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 152, 145, 138),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 152, 145, 138),
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
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
              Row(
                children: [
                  Text(
                    "Spaces ",
                    style: GoogleFonts.oldStandardTt(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Icon(Icons.line_weight_sharp)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              card(
                  "https://images.unsplash.com/photo-1527192491265-7e15c55b1ed2?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  "Solimo Ave 2",
                  "90,700",
                  "1200",
                  const HomePage(),
                  context),
              card(
                  "https://images.unsplash.com/photo-1533436041693-411c656d1383?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3BhY2VzfGVufDB8fDB8fHww",
                  "Avenue Park",
                  "77,500",
                  "160",
                  const HomePage(),
                  context)
            ],
          ),
        ),
      );
  }
}
