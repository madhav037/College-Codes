import 'package:flutter/material.dart';
import 'package:travel_app/HomePage.dart';

class LoginPage extends StatelessWidget {
  GlobalKey<FormState> validationKey = GlobalKey();
  String usernamee = '';
  String passwordd = '';
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Form(
        key: validationKey,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50, bottom: 50),
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                // key: validationKey,
                controller: username,
                decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 177, 190, 134),
                  ),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                // key: validationKey,
                controller: password,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 177, 190, 134),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.all(12),
              child: InkWell(
                onTap: () {
                  if (validationKey.currentState!.validate()) {
                    if (password.text.length >= 8  && username.text.isNotEmpty) {
                      usernamee = username.text;
                      passwordd = password.text;
                      print(usernamee);
                      print(passwordd);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );  
                    }else {
                      print("AHHHHHHHHHHHHHH!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
                    }
                    
                  }
                },
                child: const Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
