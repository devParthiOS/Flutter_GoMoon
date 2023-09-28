import 'package:flutter/material.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Moon',
      home: HomePage(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(122, 0, 2, 24),
      ),
    );
  }
}
