import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/screens/taskpage.dart';

import '../todo_list.dart';
import '../widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  _HomepageState() {
    ToDoList.tasks = <Task>[
      Task(id: 1, title: 'one', category: categories.shopping),
      Task(id: 2, title: 'onee', category: categories.shopping),
      Task(id: 3, title: 'onew', category: categories.shopping),
      Task(id: 4, title: 'oneq', category: categories.shopping),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          color: Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 32.0,
                      bottom: 32.0,
                    ),
                    child: Image(
                        image: AssetImage(
                          'assets/images/logo.png',
                        )
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: ToDoList.tasks.length,
                      itemBuilder: (BuildContext context, int index) {
                        return TaskCardWidget(
                            id: ToDoList.tasks[index].id,
                            title: ToDoList.tasks[index].title,
                            category: ToDoList.tasks[index].category.toString(),
                            onDelete: () {
                              setState(() {
                                ToDoList.deleteTask(ToDoList.tasks[index].id);
                              });
                            },
                        );
                      },
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 24.0,
                right: 0.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Taskpage(
                          onAdd: () {
                            setState(() {
                              //ToDoList.addTask(toDoList.tasks);
                            });
                          },
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFF7349FE), Color(0xFF643FDB)],
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image(
                      image: AssetImage(
                        "assets/images/add_icon.png",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
