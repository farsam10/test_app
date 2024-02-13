import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicScreen extends StatelessWidget {
  BasicScreen({super.key});

  int num1 = 10;
  int num2 = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Screen'),
        backgroundColor: Colors.green[200],
        actions: [
          IconButton(
            onPressed: () {
              print('Icon is printed');
            },
            icon: Icon(
              Icons.message,
              color: Colors.green[600],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          child: Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "This is the drawer",
                    style: GoogleFonts.bungeeSpice(),
                  ),
                  TextSpan(
                    text: '${num1 + num2}',
                    style: GoogleFonts.caveatBrush(
                      decoration: TextDecoration.underline,
                      color: Colors.blue[800],
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          color: Colors.blue[200],
        ),
      ),
      body: Container(
        child: Center(
          child: Stack(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.purple,
              ),
            ],
          ),
        ),
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/success.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            colors: [
              Colors.indigo,
              Colors.purple,
              Colors.blue,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
