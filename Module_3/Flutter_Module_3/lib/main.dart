import 'package:flutter/material.dart';
import 'package:flutter_module_3/question_49/question_49.dart';
import 'package:flutter_module_3/question_50/question_50.dart';
import 'package:flutter_module_3/question_51/question_51.dart';
import 'package:flutter_module_3/question_52/question_52.dart';
import 'package:flutter_module_3/question_53/question_53.dart';
import 'package:flutter_module_3/question_54/question_54.dart';
import 'package:flutter_module_3/question_55/question_55.dart';
import 'package:flutter_module_3/question_56/question_56.dart';
import 'package:flutter_module_3/question_57/question_57.dart';
import 'package:flutter_module_3/question_58/question_58.dart';
import 'package:flutter_module_3/question_59/question_59.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Module-2',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<String> indeX = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];
  static List<String> qustionsList = [
    'Create a below Screen',
    'Take input number from user and print its Reverse number',
    'Input 2 numbers print beetween thos numbers',
    'Add , Sub , Mul , Div using Radio Buttons',
    'Change Background Color When button is cliked',
    'Increse or Decrease Font Size',
    'Display Texview when chekbox is cheked other wise hide',
    'Four image around Textview',
    'Change Background Color when select radio button',
    'Change BAckground Color using Seek bar',
    'Create login and Resistration Form',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module-2'),
      ),
      body: ListView.builder(
        itemCount: indeX.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text(qustionsList[index].trim().toString()),
              onTap: () {
                int clicked = int.parse(indeX[index]);
                switch(clicked){
                  case 0:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen49(),));
                  }break;
                  case 1:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen50(),));
                  }break;
                  case 2:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen51(),));
                  }break;
                  case 3:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen52(),));
                  }break;
                  case 4:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen53(),));
                  }break;
                  case 5:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen54(),));
                  }break;
                  case 6:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen_55(),));
                  }break;
                  case 7:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen_56(),));
                  }break;
                  case 8:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen_57(),));
                  }break;
                  case 9:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen_58(),));
                  }break;
                  case 10:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen_59(),));
                  }break;
                }
              },
            ),
          );
        },
      ),
    );
  }
}
