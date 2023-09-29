import 'package:flutter/material.dart';
import 'package:flutter_module_3/question_49/screen_1.dart';
import 'package:flutter_module_3/question_49/screen_2.dart';

class Screen49 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Screen_1(),
                ));
              },
              child: Text('Page - 1')),
          SizedBox(height: 10,),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Screen_2(),
                ));
              },
              child: Text('Page - 2')),
        ],
      ),
    ));
  }
}
