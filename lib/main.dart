import 'package:flutter/material.dart';
import 'package:test_app/catalog_1.dart';
import 'package:test_app/crown.dart';
import 'package:test_app/favourites_modules.dart';
import 'package:test_app/profile_screen.dart';
import 'package:test_app/scrollable_sheet_screen.dart';
import 'package:test_app/scrolling_widgets.dart';
import 'package:test_app/signin_screen.dart';
import 'package:test_app/signup_screen.dart';
import 'package:test_app/signup_screen_2.dart';
import 'package:test_app/stateful_basics.dart';
import 'package:test_app/stopwatch.dart';
import 'basic_screen.dart';

void main() {
  runApp(
    StartingApp(),
  );
}

class StartingApp extends StatelessWidget {
  const StartingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Starting App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white)
      ),
      home: SignUpScreen2(),
    );
  }
}

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Demo App',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 55, 100),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'ABC',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'PHONE',
          ),
        ],
      ),
      body: Container(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Container(
            color: Color.fromARGB(255, 104, 0, 123),
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
