import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import "package:collection/collection.dart";
import 'models/task.dart';

class ToDoList {
  List<Task> tasks = <Task>[];
  List<Category> categories = <Category>[];


  void addTask(List<Task> tasksToAdd){// List<Category> categoriesToAdd) {
    tasks.addAll(tasksToAdd);
    /*if(categories == categoriesToAdd) {
      categories.addAll(categoriesToAdd);
    }*/
  }

  void deleteTask(int id){
    tasks.removeWhere((element) => element.id == id);
  }

  List<Task> getAll() {
    return tasks;
  }

  void setCategory(String categoryToAdd) {
    tasks.add(categoryToAdd);
  }

  void setDayOfWeek(){
    if(tasks. is RecurringTask){

    }
  }

  Map<String, int> getCategories() {
    var categories = groupBy(tasks, (Task task) => task.category).map((k, v) => MapEntry(k, v.length));
    return categories;
  }
}