
import 'package:flutter/material.dart';
import 'APage.dart';
import 'BPage.dart';
import 'CPage.dart';
import 'DPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Menu Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: const HomePage(title: '首頁'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: const Center(
        child: Text(''),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(''),
            ),
            ListTile(
              title: const Text('收入'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const APage())
                );
              },
            ),
            ListTile(
              title: const Text('支出'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const BPage())
                );
              },
            ),
            ListTile(
              title: const Text('總計'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const CPage())
                );
              },
            ),
            ListTile(
              title: const Text('行事曆'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const DPage())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}