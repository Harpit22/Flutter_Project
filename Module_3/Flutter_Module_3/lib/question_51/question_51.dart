import 'package:flutter/material.dart';

class Screen51 extends StatefulWidget {
  @override
  State<Screen51> createState() => _Screen51State(numbers: []);
}

class _Screen51State extends State<Screen51> {
  String value1 = '';
  String value2 = '';

  var numbers = [];

  _Screen51State({required this.numbers});

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
                    setState(() {
                      var a = int.parse(value1) as int;
                      var b = int.parse(value2) as int;
                      for (a; a <= b; a++) {
                        print('Number = ${a}');
                        numbers.add(a.toString());
                      }
                    });
                  },
                  child: Text('Clicked')),
              Flexible(
                child: Container(
                  height: 300,
                  child: ListView.builder(
                    itemCount: numbers.length,
                    itemBuilder: (context, index) {
                      return Card(
                          color: Colors.amber.shade300,
                          child: Center(
                              child: Text(
                            'Number = ${numbers[index]}',
                            style: TextStyle(fontSize: 16),
                          )));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
