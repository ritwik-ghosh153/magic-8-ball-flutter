import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[800],
          ),
          backgroundColor: Colors.blue,
          body: Center(
            child: MyApp()
          ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number=1;
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
         Expanded(
           child: FlatButton(
             child: Image.asset('images/ball$number.png'),
             onPressed: (){
               setState(() {
                 number= Random().nextInt(5)+1;
               });
             },
           ),
         ),
       ],
    );
  }
}
