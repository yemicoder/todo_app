import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  final String? text;
  final bool isDone;
  const Tasks({Key? key, this.text, required this.isDone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(7),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: isDone ? Color(0xff7349fe) : Colors.transparent,
                border: isDone ? null : Border.all(
                  color: Color(0xff868290),
                  width: 2
                )
              ),
              child: Image(
                  image: AssetImage('assets/images/check.png'),
                  fit: BoxFit.contain,
                width: 10,
                height: 10,
                color: isDone ? Colors.white : Colors.transparent,),
            ),
            SizedBox(width: 20,),
            Text(text ?? 'Unnamed todo',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff211551),
            ),
            ),
          ],
        ),
    );
  }
}