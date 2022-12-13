import 'package:calendar/DPageData/calendar.dart';
import 'package:flutter/material.dart';
import 'DPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('首頁'),
          backgroundColor: Colors.green,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[


        OutlinedButton(
          child: const Icon(Icons.edit_calendar ,size:100),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DPage())
            );
          },
        ),

      ],

    );

  }
}