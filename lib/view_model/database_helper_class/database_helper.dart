
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.internal();
  DatabaseHelper.internal();

  static Database? _database;

  Future<Database> initDatabase() async {
    //Step 1: Get the application Directory path
    final directory = await getApplicationDocumentsDirectory();
    print("directory path ${directory.path}");
    //join the db file name into path
    final path = join(directory.path, "class8to9.db");
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
            "Create table user (firstname Text, email Text, phone Text, lastname Text)");
      },
    );
  }

  Future<Database> getDatabase() async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await initDatabase();
      return _database!;
    }
  }
}



