import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'models/task.dart';

class ToDoList {
  Future<Database> database() async {
    return openDatabase(
      join(await getDatabasesPath(), 'todo.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT, description TEXT, category TEXT)',
        );
      },
    );
  }

  Future<void> insertTask(Task task) async {
    Database _db = database() as Database;
    await _db.insert('tasks', task.toMap());
  }
}