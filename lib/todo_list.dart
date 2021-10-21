import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import "package:collection/collection.dart";
import 'models/task.dart';

class ToDoList {
  static List<Task> tasks = <Task>[];
  static List<Category> categories = <Category>[];

  ToDoList();

 /*void addTask(List<Task> tasksToAdd) {
    tasks.addAll(tasksToAdd);

  void addTask(BuildContext context) {
    var tasks =
  }*/

  static void deleteTask(int id){
    tasks.removeWhere((element) => element.id == id);
  }

  static List<Task> getAll() {
    return tasks;
  }

/*
  Map<String, int> getCategories() {
    var categoriess = groupBy(tasks, (Task task) => task.category).map((k, v) => MapEntry(k, v.length));
    return categoriess;
  }*/
}