import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<List> getData () async {
    var res = await http.get(Uri.parse("https://64e6e483b0fd9648b78f0469.mockapi.io/faculties"));
    print(res.statusCode);
    return jsonDecode(res.body);
  }

  Future<void> insertData(String name, String subject) async {
    Map<String,dynamic> mp = {};
    mp['name'] = name;
    mp['subject'] = subject;
    var res = await http.post(Uri.parse("https://64e6e483b0fd9648b78f0469.mockapi.io/faculties"),
    body: mp
    );
    print(res);
  }

  Future<void> deleteData(id) async {
    await http.delete(Uri.parse("https://64e6e483b0fd9648b78f0469.mockapi.io/faculties/"+id));
  }

  Future<void> updateData(String name, String subject, id) async {
    Map<String,dynamic> mp = {};
    mp['name'] = name;
    mp['subject'] = subject;
    var res = await http.put(Uri.parse("https://64e6e483b0fd9648b78f0469.mockapi.io/faculties/"+id),
    body: mp);
    print(res);
    return;
  }
}