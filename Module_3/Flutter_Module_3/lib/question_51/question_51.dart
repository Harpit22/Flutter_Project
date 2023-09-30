import 'package:flutter/material.dart';
import 'package:flutter_module_3/question_51/screen_Second.dart';

class Screen51 extends StatefulWidget {
  @override
  State<Screen51> createState() => _Screen51State();
}

class _Screen51State extends State<Screen51> {
  String value1 = '';
  String value2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                // controller: userText1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  label: Text('Enter First Number'),
                ),
                onChanged: (value) {
                  setState(() {
                    value1 = value;
                  });
                },
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                // controller: userText2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  label: Text('Enter Second Number'),
                ),
                onChanged: (value) {
                  setState(() {
                    value2 = value;
                  });
                },
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    int? firstValue = int.tryParse(value1);
                    int? secondValue = int.tryParse(value2);

                    if (firstValue != null && secondValue != null) {
                      Navigator
                          .of(context)
                          .push(MaterialPageRoute(builder: (context) =>
                          Screen_Second(firstValue: firstValue,
                              secondValue: secondValue),));
                          }

                      },
                  child: Text('Clicked')),
            ],
          ),
        ),
      ),
    );
  }
}

