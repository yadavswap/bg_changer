import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Background Changer'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  var colors = [
    Colors.amber,
    Colors.black,
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.brown
  ];

  var currentColor = Colors.white;

  setRandomColor() {
    var rnd = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rnd];
    });
  }

  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: ElevatedButton(
          onPressed: setRandomColor, 
          child: Text('Click Me'),
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(100, 50)),
    
          ),
      ),
      )
    );
  }
}
