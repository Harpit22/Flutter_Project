import 'package:flutter/material.dart';

class Screen54 extends StatefulWidget {

  @override
  State<Screen54> createState() => _Screen54State();
}

class _Screen54State extends State<Screen54> {
  String textValue = 'Hello World';
  double sizeOfFont = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textValue,
              style: TextStyle(fontSize: sizeOfFont),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  sizeOfFont--;
                  print(sizeOfFont);
                });
              },
              child: Text('-'),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  sizeOfFont++;
                  print(sizeOfFont);
                });
              },
              child: Text('+'),
            ),
          ],
        ),
      ),
    );
  }
}
