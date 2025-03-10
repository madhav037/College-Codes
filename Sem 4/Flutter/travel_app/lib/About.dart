import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/HomePage.dart';
import 'package:travel_app/menu_bar.dart';
import 'package:travel_app/spaces.dart';

class AboutPage extends StatelessWidget {
  int index = 00;

  Widget services(String name, Widget linkToPage, BuildContext context) {
    index++;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    "$index" ".",
                    style: GoogleFonts.oldStandardTt(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 25,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.bottomStart,
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    name,
                    style: GoogleFonts.oldStandardTt(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => linkToPage),
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
                color: Color.fromARGB(255, 177, 190, 134),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 177, 190, 134),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 177, 190, 134),
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
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Life is all About Comfort",
                  style: GoogleFonts.oldStandardTt(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 45,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.network(
                    "https://images.unsplash.com/photo-1563906267088-b029e7101114?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  "Our Services",
                  style: GoogleFonts.oldStandardTt(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                // Container(
                //   padding: const EdgeInsets.all(15),
                //   child: Wrap(
                //     spacing: 15.0,
                //     runSpacing: 15.0,
                //     children: [
                //       Row(
                //         children: [
                //           services("Consultancy", const HomePage(), context),
                //           services("Architecture", const HomePage(), context),
                //           services("Interior", const HomePage(), context),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                services("Consultancy", const HomePage(), context),
                services("Architecture", const HomePage(), context),
                services("Interior", const HomePage(), context),
              ],
            ),
          ),
        ],
      ),
      drawer: Menu(),
    );
  }
}
