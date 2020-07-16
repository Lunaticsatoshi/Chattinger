import 'package:chattinger/UI/first_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chattinger',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff1F1F1F),
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryIconTheme: Theme.of(context).primaryIconTheme.copyWith(
              color: Colors.black,
            ),
      ),
      home: FirstScreen(),
    );
  }
}
