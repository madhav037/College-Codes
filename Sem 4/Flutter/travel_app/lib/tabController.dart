import 'package:flutter/material.dart';

class TabBar1 extends StatefulWidget {
  const TabBar1({super.key});

  @override
  State<TabBar1> createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBar1> with TickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar"),
        bottom: TabBar(controller: _tabController, tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            text: "Status",
          ),
          Tab(
            text: "Calls",
          )
        ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          trailing: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Delete Dialog box"),
                      content: Text("Are you sure to delete data ?"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              print("True");
                              Navigator.of(context).pop();
                            },
                            child: Text("Yes")),
                        TextButton(
                            onPressed: () {
                              print("False");
                              Navigator.of(context).pop();
                            },
                            child: Text("No")),
                      ],
                    );
                  },
                );
              },
              icon: Icon(Icons.delete)),
        ),
        Center(
          child: Text("Status page", style: TextStyle(fontSize: 20)),
        ),
        Center(
          child: Text(
            "Calls page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ]),
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Contacts"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          )
        ],
      )),
    );
  }
}
