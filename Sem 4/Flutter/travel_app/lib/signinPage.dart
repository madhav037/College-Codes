import 'package:flutter/material.dart';
import 'package:travel_app/HomePage.dart';

class SigninPage extends StatelessWidget {
  GlobalKey<FormState> validationKey = GlobalKey();
  String usernamee = '';
  String passwordd = '';
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController cpassword = TextEditingController();
  @override

  bool validateEmail(String email) {
    final regex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return regex.hasMatch(email);
  }

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
                "Sign in",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                // key: validationKey,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "write properly";
                  }
                },
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
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                // key: validationKey,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "required";
                  }
                  if (!validateEmail(value)) {
                    return "Enter valid email";
                  }
                },
                controller: email,
                decoration: InputDecoration(
                  labelText: "email",
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
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                keyboardType: TextInputType.number,
                // key: validationKey,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "required";
                  }
                  if (value.length != 10) {
                    return "invalid length";
                  }
                },
                controller: number,
                decoration: InputDecoration(
                  labelText: "mobile no.",
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "required";
                  }
                  if (value.length < 8) {
                    return "invalid length";
                  }

                  passwordd = password.text;
                },
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
            Container(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                // key: validationKey,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "required";
                  }
                  if (value != passwordd) {
                    return "incorrect match";
                  }
                },
                controller: cpassword,
                decoration: InputDecoration(
                  labelText: "confirm password",
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
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.all(12),
              child: InkWell(
                onTap: () {
                  if (validationKey.currentState!.validate()) {
                    if (password.text.length >= 8  && username.text.isNotEmpty && cpassword.text.length >= 8) {
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
                  "Sign In",
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