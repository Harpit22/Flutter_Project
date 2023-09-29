import 'package:flutter/material.dart';

class Screen_56 extends StatefulWidget {
  const Screen_56({super.key});

  @override
  State<Screen_56> createState() => _Screen_56State();
}

class _Screen_56State extends State<Screen_56> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,runSpacing: 10,
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/pic_1.jpg',),
              ),
              Container(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/pic_2.jpg',),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: Colors.amber.shade200,
                    child: Text('Four Pictures Around Text !!',style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
              Container(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/pic_3.jpg',),
              ),
              Container(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/pic_4.jpg',),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
