

import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String? title;
  final String? desc;
  const TaskCardWidget({Key? key, this.title, this.desc }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 0.01,
            blurRadius: 20,
          ),
        ]
      ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? '(Unnamed Task)',
                style: TextStyle(
                  color: Color(0xff211551),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
                Text(desc ?? 'No description added',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff86829d),
                  height: 1.5,
                ),
              ),
            ],
          ),
    );
  }
}

