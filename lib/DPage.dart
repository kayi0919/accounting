import 'package:expense/DPageData/calendar.dart';
import 'package:flutter/material.dart';


class DPage extends StatefulWidget {
  const DPage({super.key});


  @override
  _DPage createState() => _DPage();
}

class _DPage extends State<DPage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: "行事曆",
      home: Calendar(),
    );
  }
}