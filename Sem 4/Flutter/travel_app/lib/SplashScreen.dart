import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/HomePage.dart';
import 'package:travel_app/databaseThings.dart';
import 'package:travel_app/loginPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    myDB().copyPasteAssetFileToRoot();
    Timer(
      const Duration(seconds: 2),
      () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => const HomePage()));
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Text(
          "Avicii",
          style: GoogleFonts.oldStandardTt(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 48,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
