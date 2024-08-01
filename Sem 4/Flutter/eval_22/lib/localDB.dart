import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocalDb {

  Future<Database> initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'MyDatabase.db'),
      version: 1,
      onCreate: (db, version) {
        db.execute(
            'CREATE TABLE Tbl_user(UserId INTEGER PRIMARY KEY AUTOINCREMENT,Name TEXT)');
      },
      onUpgrade: (db, oldVersion, newVersion) {},
    );
  }

  Future<List<Map<String,dynamic>>> getData () async {
    Database db = await initDatabase();
    var res = await db.rawQuery('SELECT * FROM tbl_user');
    return res;
  }

  Future<void> insert (String name) async {
    Database db = await initDatabase();
    Map<String, dynamic> mp = {};
    mp['Name']=name;
    await db.insert('tbl_user', mp);
  }

  Future<void> update (String name, id) async {
    Database db = await initDatabase();
    Map<String, dynamic> mp = {};
    mp['Name']=name;
    await db.update('tbl_user', mp, where: 'UserId = ?', whereArgs: [id]);
  }

  Future<void> delete ( id) async {
    Database db = await initDatabase();
    await db.delete('tbl_user', where: 'UserId = ?', whereArgs: [id]);
  }
}