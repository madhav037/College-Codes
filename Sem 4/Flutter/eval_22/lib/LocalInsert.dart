import 'package:eval_22/LocalBody.dart';
import 'package:eval_22/body.dart';
import 'package:eval_22/localDB.dart';
import 'package:flutter/material.dart';

class LocalInsert extends StatefulWidget {
  String name = "";
  // String subject = "";
  dynamic? id;
  LocalInsert({super.key, required this.name, this.id});

  @override
  State<LocalInsert> createState() => _LocalInsertState();
}

class _LocalInsertState extends State<LocalInsert> {
  TextEditingController _name = new TextEditingController();
  // TextEditingController _id = new TextEditingController();
  int? _id;
  @override
  void initState() {
    super.initState();
    _name.text = widget.name;
    _id = widget.id;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextFormField(
              controller: _name,
              decoration: const InputDecoration(hintText: "name"),
            ),
            IconButton(onPressed: () async {
              if (_id == null) {
                await LocalDb().insert(_name.text.toString());
              }
              else {
                await LocalDb().update(_name.text.toString(), _id);
              }
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LocalBody(),));
            }, icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
