import 'package:flutter/material.dart';

class Screen50 extends StatefulWidget {


  @override
  State<Screen50> createState() => _Screen50State();
}

class _Screen50State extends State<Screen50> {
  TextEditingController userInputText = TextEditingController();

  String userInputValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: userInputText,
                  decoration: InputDecoration(
                    label: Text('Enter Text'),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      userInputValue = value;
                    });
                  },
                ),
                SizedBox(height: 20,),
                Card(
                  child: Text(userInputValue.split('').reversed.join(),style: TextStyle(fontSize: 30,color: Colors.white),),
                  color: Colors.black54,
                ),


              ],
            ),
          )
        )
    );
  }
}

