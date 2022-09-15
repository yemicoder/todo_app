import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/screens/task_screen.dart';
import 'package:todo_app/widgets.dart';


class TodoHome extends StatefulWidget {
  const TodoHome({Key? key}) : super(key: key);

  @override
  State<TodoHome> createState() => _TodoHomeState();
}

class _TodoHomeState extends State<TodoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Color(0xfff6f6f6),
              padding: EdgeInsets.only(top: 30, right: 30, left: 30,),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                       children: [
                         Image(image: AssetImage('assets/images/tasks.png'),
                           width: 80,
                           height: 80,),
                         SizedBox(width: 40,),
                         Text('TODOOO',
                           style: TextStyle(
                             fontSize: 30,
                             fontWeight: FontWeight.bold,
                             color: Color(0xff211551),
                           ),),
                       ],
                   ),
                   Expanded(
                     child: ListView(
                       children: [
                         TaskCardWidget(
                             title: 'Get started!',
                             desc: 'Hello User! Welcome to TODOOO App, this is a default'
                                 'text that you can edit or delete to start using the app'
                         ),
                         TaskCardWidget(),
                         TaskCardWidget(),
                         TaskCardWidget(),
                         TaskCardWidget(),
                         TaskCardWidget(),
                       ],
                     ),
                   ),
                 ],
               ),
            ),
              Positioned(
                bottom: 30.0,
                right: 30.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TaskPage()));
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 40,),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
