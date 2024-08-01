import 'package:eval_22/database.dart';
import 'package:eval_22/insert.dart';
import 'package:flutter/material.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Insert(
                  name: "",
                  subject: "",
                  id: "",
                ),
              ));
            },
            icon: Icon(Icons.add),
          ),
          Expanded(
              child: FutureBuilder(
            future: Api().getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(snapshot.data![index]['name']),
                          ),
                          Expanded(
                            child: Text(snapshot.data![index]['subject']),
                          ),
                          IconButton(
                            onPressed: () async {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Insert(
                                      name: snapshot.data![index]['name'],
                                      subject: snapshot.data![index]['subject'],
                                      id: snapshot.data![index]['id']),
                                ),
                              );
                              setState(() {});
                            },
                            icon: Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () async {
                              await Api().delete(snapshot.data![index]['id']);
                              setState(() {});
                            },
                            icon: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: snapshot.data!.length,
                );
              } else {
                return CircularProgressIndicator();
              }
            },
          ))
        ],
      ),
    );
  }
}
