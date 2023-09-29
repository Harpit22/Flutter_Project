import 'package:flutter/material.dart';

class Screen_58 extends StatefulWidget {
  @override
  State<Screen_58> createState() => _Screen_58State();
}

class _Screen_58State extends State<Screen_58> {
  double value1 = 0;
  double value2 = 0;
  double value3 = 0;
  double opacity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color.fromRGBO(value1.toInt(),value2.toInt(),value3.toInt(),opacity),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  color: Colors.grey.shade200,
                  child: Text('$value1'),
                ),
                Slider(
                  value: value1,
                  max: 255,
                  divisions: 255,
                  label: value1.toString(),
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      value1 = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  color: Colors.grey.shade200,
                  child: Text('$value2'),
                ),
                Slider(
                  value: value2,
                  max: 255,
                  divisions: 255,
                  label: value2.toString(),
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      value2 = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  color: Colors.grey.shade200,
                  child: Text('$value3'),
                ),
                Slider(
                  value: value3,
                  max: 255,
                  divisions: 255,
                  label: value3.toString(),
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      value3 = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Color Opacity'),
                Slider(
                  value: opacity,
                  max: 100,
                  divisions: 100,
                  label: opacity.toString(),
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      opacity = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
