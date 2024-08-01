import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/HomePage.dart';
import 'package:travel_app/spaces.dart';

import 'About.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).canvasColor,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Menu",
              style: GoogleFonts.oldStandardTt(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 50,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Icon(Icons.ac_unit_sharp),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  child: Text("Home",
                      style: GoogleFonts.oldStandardTt(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 20,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Icon(Icons.ac_unit_sharp),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AboutPage()));
                  },
                  child: Text("About us",
                      style: GoogleFonts.oldStandardTt(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 20,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Icon(Icons.ac_unit_sharp),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Spaces()));
                  },
                  child: Text("Spaces",
                      style: GoogleFonts.oldStandardTt(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 20,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
