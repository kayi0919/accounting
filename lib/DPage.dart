import 'package:calendar/DPageData/calendar.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class DPage extends StatefulWidget {

  @override
  _DPage createState() => _DPage();
}

class _DPage extends State<DPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ESTech Calendar",
      home: Calendar(),
    );
  }
}