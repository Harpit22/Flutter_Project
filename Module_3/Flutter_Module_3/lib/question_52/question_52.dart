import 'package:flutter/material.dart';

class Screen52 extends StatefulWidget {
  @override
  State<Screen52> createState() => _Screen52State();
}

class _Screen52State extends State<Screen52> {
  String num1 = '';
  String num2 = '';
  var answer;
  String values = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  label: Text('Enter First Value'),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    num1 = value;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text('Enter Second Value'),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    num2 = value;
                  });
                },
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio(
                          value: 'Addition',
                          groupValue: null,
                          onChanged: (value) {
                            double sum = (double.parse(num1.toString().trim())) + (double.parse(num2.toString().trim()));
                            print(value);
                            values = value!;
                            setState(() {
                              answer = sum;
                            });
                          },
                        ),
                        Text('+'),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio(
                          value: 'Subtraction',
                          groupValue: null,
                          onChanged: (value) {
                            double div = (double.parse(num1.toString().trim())) - (double.parse(num2.toString().trim()));
                            print(div);
                            values = value!;
                            setState(() {
                              answer = div;
                            });
                          },
                        ),
                        Text('-'),
                      ],
                    ),

                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio(
                          value: 'Multiplication',
                          groupValue: null,
                          onChanged: (value) {
                            double mul = (double.parse(num1.toString().trim())) * (double.parse(num2.toString().trim()));
                            print(answer);
                            values = value!;
                            setState(() {
                              answer = mul;
                            });
                          },
                        ),
                        Text('*'),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio(
                          value: 'Devision',
                          groupValue: null,
                          onChanged: (value) {
                            double divi = (double.parse(num1.toString().trim())) / (double.parse(num2.toString().trim()));
                            print(answer);
                            values = value!;
                            setState(() {
                              answer = divi;
                            });
                          },
                        ),
                        Text('/'),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                width: 200,
                height: 50,
                // color: Colors.amber.shade500,
                decoration: BoxDecoration(
                  color: Colors.amber.shade500,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Text('${values} =  ${answer}',style: TextStyle(fontSize: 16,color: Colors.black54),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
