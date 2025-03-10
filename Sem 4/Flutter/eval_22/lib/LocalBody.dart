import 'package:eval_22/LocalInsert.dart';
import 'package:eval_22/localDB.dart';
import 'package:flutter/material.dart';

class LocalBody extends StatefulWidget {
  const LocalBody({super.key});

  @override
  State<LocalBody> createState() => _LocalBodyState();
}

class _LocalBodyState extends State<LocalBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LocalInsert(
                    name: "",
                  ),
                ));
              },
              icon: Icon(Icons.add),
            ),
            Expanded(
                child: FutureBuilder(
                  future: LocalDb().getData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          return Card(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(snapshot.data![index]['Name']),
                                ),
                                IconButton(
                                  onPressed: () async {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => LocalInsert(
                                            name: snapshot.data![index]['Name'],
                                            id: snapshot.data![index]['UserId']),
                                      ),
                                    );
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.edit),
                                ),
                                IconButton(
                                  onPressed: () async {
                                    await LocalDb().delete(snapshot.data![index]['UserId']);
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
      ),
    );;
  }
}
