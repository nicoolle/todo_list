import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import "package:collection/collection.dart";
import 'models/task.dart';

class ToDoList {
  List<Task> tasks = <Task>[];
  List<Category> categories = <Category>[];


  void addTask(List<Task> tasksToAdd) {
    tasks.addAll(tasksToAdd);
  }

  void deleteTask(int id){
    tasks.removeWhere((element) => element.id == id);
  }

  List<Task> getAll() {
    return tasks;
  }

  Map<String, int> getCategories() {
    var categories = groupBy(tasks, (Task task) => task.category).map((k, v) => MapEntry(k, v.length));
    return categories;
  }
}