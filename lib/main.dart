import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index;

  @override
  void initState() {
    super.initState();
    _index = 3;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Me Anything',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blueAccent.shade700),
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
        ),
        body: Center(
          child: GestureDetector(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Image.asset(
                'assets/ball$_index.png',
                fit: BoxFit.cover,
              ),
            ),
            onTap: _getNewImg,
          ),
        ),
      ),
    );
  }

  _getNewImg() {
    Random random = Random();
    _index = (1 + random.nextInt(5));
    setState(() {});
  }
}
