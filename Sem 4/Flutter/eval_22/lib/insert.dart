import 'package:eval_22/body.dart';
import 'package:eval_22/database.dart';
import 'package:flutter/material.dart';

class Insert extends StatefulWidget {
  String name = "";
  String subject = "";
  String id = "";
  Insert({super.key, required this.name, required this.subject, required this.id});

  @override
  State<Insert> createState() => _InsertState();
}

class _InsertState extends State<Insert> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _subject = new TextEditingController();
  TextEditingController _id = new TextEditingController();
  @override
  void initState() {
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
            decoration: InputDecoration(hintText: "name"),
          ),
          TextFormField(
            controller: _subject,
            decoration: InputDecoration(hintText: "subject"),
          ),
          IconButton(onPressed: () async {
            if (_id.text.toString() == "") {
              await Api().insert(_name.text.toString(), _subject.text.toString());
            }
            else {
              await Api().update(_name.text.toString(), _subject.text.toString(), _id.text.toString());
            }
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => BodyPage(),));
          }, icon: Icon(Icons.add))
        ],
      ),
    );
  }
}
