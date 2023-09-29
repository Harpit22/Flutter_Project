import 'package:flutter/material.dart';
import 'package:flutter_module_3/question_49/question_49.dart';

class Screen_1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(5),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 6,
            children: [
              Container(
                height: 140,
                color: Colors.red,
              ),
              Container(
                height: 190,
                width: 190,
                color: Colors.blue,
              ),Container(
                height: 190,
                width: 190,
                color: Colors.blue,
              ),
              Container(
                height: 190,
                width: 190,
                color: Colors.blue,
              ),Container(
                height: 190,
                width: 190,
                color: Colors.blue,
              ),
              Container(
                height: 125,
                width: 125,
                color: Colors.amber,
              ),Container(
                height: 125,
                width: 125,
                color: Colors.amber,
              ),Container(
                height: 125,
                width: 125,
                color: Colors.amber,
              ),
              Container(
                height: 125,
                width: 125,
                color: Colors.amber,
              ),Container(
                height: 125,
                width: 125,
                color: Colors.amber,
              ),Container(
                height: 125,
                width: 125,
                color: Colors.amber,
              ),

            ],
          ),
        )
    );
  }
}

