import 'package:flutter/material.dart';

class Screen_Second extends StatelessWidget {

  final int firstValue;
  final int secondValue;

  Screen_Second({required this.firstValue, required this.secondValue});

  @override
  Widget build(BuildContext context) {

    List<int> numbers = [];

    for(var i = firstValue ; i <= secondValue ; i++){
      numbers.add(i);
    }
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 500,
            width: double.infinity,
            child: ListView.builder(
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Text(
                    'Number = ${numbers[index]}',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text('Back'))
        ],
      ),
    );
  }
}
