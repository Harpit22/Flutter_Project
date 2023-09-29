import 'package:flutter/material.dart';

class Screen_55 extends StatefulWidget {
  const Screen_55({super.key});

  @override
  State<Screen_55> createState() => _Screen_55State();
}

class _Screen_55State extends State<Screen_55> {
  bool firstValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: firstValue,
              child: Text(
                'Hello World',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10,),
            Checkbox(
              value: firstValue,
              onChanged: (value) {
                setState(() {
                  print(value);
                  firstValue = value!;
                });
              },
            ),
            SizedBox(height: 10,),
            Text('Clicked Is Show / UnClicked is Hidde of Text'),
          ],
        ),
      ),
    );
  }
}
