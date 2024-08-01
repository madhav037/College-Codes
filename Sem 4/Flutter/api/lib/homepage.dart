import 'package:api/database.dart';
import 'package:api/insert.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              print("HEllo");
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => InsertPage(name: '', subject: '', id : ''),
                ),
              );
            },
            child: Icon(Icons.add),
          ),
          Expanded(child: FutureBuilder(future: Api().getData(), builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(itemBuilder: (context, index) {
                return Card(child: Row(children: [
                  Expanded(
                      flex: 2,
                      child: Text(snapshot.data![index]['name'])),
                  Expanded(
                      flex: 2,
                      child: Text(snapshot.data![index]['subject'])),
                  Expanded(
                    child: InkWell(
                      child: Icon(Icons.edit),
                      onTap: () async {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => InsertPage(name: snapshot.data![index]['name'],subject: snapshot.data![index]['subject'],id: snapshot.data![index]['id'],),),
                        );
                        setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Icon(Icons.delete),
                      onTap: () async {
                        await Api()
                            .deleteData(snapshot.data![index]['id']);
                        setState(() {});
                      },
                    ),
                  ),
                ]),
                );
              },itemCount: snapshot.data!.length,);
            }else {
              return CircularProgressIndicator();
            }
          },))
        ],
      ),
    );
  }
}
