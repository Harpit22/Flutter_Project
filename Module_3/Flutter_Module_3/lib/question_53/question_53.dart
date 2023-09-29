import 'dart:math';

import 'package:flutter/material.dart';

class Screen53 extends StatefulWidget {
  const Screen53({super.key});

  @override
  State<Screen53> createState() => _Screen53State();
}

class _Screen53State extends State<Screen53> {
  Color cone = Colors.blueAccent;
  Color ctwo = Colors.redAccent;

  //for random colors from selected list of colors
  List<Color> colors = [
    Colors.redAccent,
    Colors.teal,
    Colors.green,
    Colors.grey
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Generate Random Color"), //appbar title
            backgroundColor: Colors.redAccent //appbar background color
            ),
        backgroundColor: cone,
        body: Container(
            height: 130,
            color: ctwo,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(15),
            child: Column(children: [
              ElevatedButton(
                  onPressed: () {
                    Random random = Random();
                    Color tempcol = Color.fromRGBO(
                      random.nextInt(255),
                      random.nextInt(255),
                      random.nextInt(255),
                      1,
                    );

                    setState(() {
                      cone = tempcol;
                    });
                  },
                  child: Text("Random Scaffold Color")),
              ElevatedButton(
                  onPressed: () {
                    Random random = Random();
                    int cindex = random.nextInt(colors.length);
                    Color tempcol = colors[cindex];

                    setState(() {
                      ctwo = tempcol;
                    });
                  },
                  child: Text("Random Container Color")),
            ])));
  }
}
