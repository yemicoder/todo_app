import 'package:flutter/material.dart';
import 'package:todo_app/data_base_helper.dart';
import 'package:todo_app/screens/tasks.dart';
import 'package:todo_app/widgets.dart';

import '../task.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
                padding: EdgeInsets.only(top: 30, right: 30, left: 20, bottom: 30),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back,
                                  size: 30, color: Color(0xff211551)
                                ),
                            ),
                            SizedBox(width: 30,),
                            Expanded(child: TextField(
                              onSubmitted: (value) async {
                                print("$value");

                                if(value != "") {
                                  DatabaseHelper _dbHelper = DatabaseHelper();
                                  Task _newTask = Task(
                                    title: value
                                  );
                                  await _dbHelper.insertTask((_newTask));
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "Enter Task Title",
                                hintStyle: TextStyle(
                                  color: Color(0xff211551),
                                ),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff211551),
                              ),
                            ))
                          ],
                        ),
                        SizedBox(height: 30,),
                          Container(
                                padding: EdgeInsets.only(right: 30, left: 30),
                                decoration: BoxDecoration(
                                  color:Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Enter Description for the Task",
                                      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                                    border: InputBorder.none,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.shade300
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    )),
                                    maxLines: 5,
                                    minLines: 1,
                                    style: TextStyle(
                                      fontSize: 25,
                                      height: 1.5
                                    ),
                                  ),
                              ),
                        SizedBox(height: 30,),
                        Tasks(
                          text: 'Create your first task',
                          isDone: true,
                        ),
                        Tasks(
                          text: 'Create your first Todo as well',
                          isDone: true,
                        ),
                        Tasks(
                          isDone: false,
                        ),
                        Tasks(
                          isDone: false,
                        ),
                        Tasks(
                          isDone: false,
                        ),
                        Tasks(
                          isDone: false,
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => TaskPage()));
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xfffe3577),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Icon(Icons.delete_forever, color: Colors.white, size: 40,),
                        ),
                      ),
                    ),
                  ],
              ),
          ),
        ),
    );
  }
}
