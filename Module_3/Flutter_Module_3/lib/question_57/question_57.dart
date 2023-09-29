import 'package:flutter/material.dart';

class Screen_57 extends StatefulWidget {
  @override
  State<Screen_57> createState() => _Screen_57State();
}

class _Screen_57State extends State<Screen_57> {
  Color colorName = Colors.white;
  Color greenColor = Colors.black54;
  Color blueColor = Colors.black54;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: colorName,
            ),
            Padding(
              padding: EdgeInsets.only(top: 100, left: 100),
              child: Row(
                children: [
                  Radio(
                    value: 'Green',
                    groupValue: colorName,
                    activeColor: Colors.white,
                    fillColor:
                    MaterialStateColor.resolveWith((states) => greenColor),
                    onChanged: (value) {
                      setState(() {
                        print(value);
                        colorName = Colors.green;
                        greenColor = Colors.green.shade200;
                      });
                    },
                  ),
                  Text('Green'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 140, left: 100),
              child: Row(
                children: [
                  Radio(
                    value: 'Blue',
                    groupValue: null,
                    activeColor: Colors.white,
                    fillColor:
                    MaterialStateColor.resolveWith((states) => blueColor),
                    onChanged: (value) {
                      setState(() {
                        print(value);
                        colorName = Colors.blue;
                        blueColor = Colors.blue.shade200;
                      });
                    },
                  ),
                  Text('Blue'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 180, left: 100),
              child: Row(
                children: [
                  Radio(
                    value: 'Red',
                    groupValue: null,
                    onChanged: (value) {
                      setState(() {
                        print(value);
                        colorName = Colors.red;
                      });
                    },
                  ),
                  Text('Red'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 220, left: 100),
              child: Row(
                children: [
                  Radio(
                    value: 'Pink',
                    groupValue: null,
                    onChanged: (value) {
                      setState(() {
                        print(value);
                        colorName = Colors.pink;
                      });
                    },
                  ),
                  Text('Pink'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 260, left: 100),
              child: Row(
                children: [
                  Radio(
                    value: 'Amber',
                    groupValue: null,
                    onChanged: (value) {
                      setState(() {
                        print(value);
                        colorName = Colors.amber;
                      });
                    },
                  ),
                  Text('Amber'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
