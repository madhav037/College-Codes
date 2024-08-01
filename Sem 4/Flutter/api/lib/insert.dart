import 'package:api/database.dart';
import 'package:api/homepage.dart';
import 'package:flutter/material.dart';

class InsertPage extends StatefulWidget {
  String name = "";
  String subject = "";
  String id = "";
  InsertPage({super.key,required this.name, required this.subject, required this.id});

  @override
  State<InsertPage> createState() => _InsertPageState();
}

class _InsertPageState extends State<InsertPage> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _subject = new TextEditingController();
  TextEditingController _id = new TextEditingController();

  void initState () {
    super.initState();
    _name.text = widget.name;
    _subject.text = widget.subject;
    _id.text = widget.id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: _name,
            decoration: const InputDecoration(hintText: "username"),
          ),
          TextFormField(
            controller: _subject,
            decoration: const InputDecoration(hintText: "Subject"),
          ),
          Center(
            child: IconButton(
              onPressed: () async {
                if (_id.text == "") {
                  await Api().insertData(
                      _name.text.toString(), _subject.text.toString());
                }else {
                  await Api().updateData(
                      _name.text.toString(), _subject.text.toString(),
                      _id.text.toString());
                }
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
