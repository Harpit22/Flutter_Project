import 'package:flutter/material.dart';

class Screen_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset('assets/images/ocean.jpg'),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(top: 20, left: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  'Oeschinen Lake Campound',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  'Kandesteg, Switgerland',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        size: 40,
                        color: Colors.blue,
                      ),
                      Text(
                        'Call',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.directions,
                        size: 40,
                        color: Colors.blue,
                      ),
                      Text(
                        'Route',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        size: 40,
                        color: Colors.blue,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Padding(padding: EdgeInsets.all(14),child: Text('The ocean is a huge body of saltwater that covers about 71 percent of Earth\'s surface. The planet has one global ocean, though oceanographers and the countries of the world have traditionally divided it into four distinct regions: the Pacific, Atlantic, Indian, and Arctic oceans.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),)
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 292,left: 300,),
            child: Icon(Icons.star,color: Colors.red,size: 35,),
          ),
          Container(
            padding: EdgeInsets.only(top: 297,left: 335,),
            child: Text('41',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
          ),
        ],
      ),
    );
  }
}
