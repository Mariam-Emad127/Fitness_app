import 'package:fitness/feature/chatting_page/data/model/message_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MessageDatabase {
  static Database? _db;
  Future<Database?> get db async {
    if (_db == null) {
      _db =await initalDb();
      return _db;
    } else {
      return _db;
    }
  }

  initalDb() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'message.db');
    Database database = await openDatabase(
      path,
      version: 3,
      onUpgrade: _onUpgrade,
      onCreate: (Database db, int version) async {
        // When creating the db, create the table
        await db.execute('''CREATE TABLE messages (id INTEGER PRIMARY KEY,   
      type TEXT,
  message TEXT,
  sender TEXT,
  reciver TEXT,
  time TEXT)''');
      },
    );
    print("[[[[[[[[[[[[[[[kkkkkkkk]]]]]]]]]]]");

    return database;
  }

  _onUpgrade(Database database, int oldverision, int newVerision) {}
  readData(String sql) async {
    Database? database = await db;
    //'SELECT * FROM messages '
    List<Map> response = await database!.rawQuery(sql);
    return response;
  }

  updateData(String sql) async {
    Database? database = await db;
    int response = await database!.rawUpdate(sql);
    return response;
  }

  //String sql
  insertData(MessageModel messageModel) async {
    Database? database = await db;
    int response = await database!.insert('messages', messageModel.toJson());
    print("[[[[[[[[[[[[[[[[object]]]]]]]]]]]]]]]]");
    //rawInsert(sql);
    return response;
  }

  deleteData(String sql) async {
    Database? database = await db;
    int response = await database!.rawDelete(sql);
    return response;
  }
}
