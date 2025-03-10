import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hello extends StatefulWidget {
  @override
  State<Hello> createState() => _HelloState();
}

TextEditingController username = TextEditingController();
String printUsername = 'USERNAME';

class _HelloState extends State<Hello> {
  Widget customText(String name, {Color? color, String? fontFamily}) {
    return Text(
      name,
      style: TextStyle(color: color, fontFamily: fontFamily),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'Hello world',
            style: TextStyle(color: Colors.red, fontSize: 27),
          ),
          Text(
            'This is Google Fonts',
            style: GoogleFonts.getFont('Lato'),
          ),
          customText("Custom", fontFamily: "My_font", color: Colors.redAccent),
          TextField(
            controller: username,
            decoration: const InputDecoration(
              labelText: "username",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                print(username.text);
                setState(() {
                  printUsername = username.text;
                  username.text = "";
                });
              },
              child: Text("Print")),
          Text(printUsername)
        ],
      ),
    );
  }
}
