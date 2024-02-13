// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/scrolling_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: true,
            floating: true,
            title: Text("Test App"),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ProfileImage();
              },
              childCount: 2,
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            children: [
              ProfileImage(),
              ProfileImage(),
              ProfileImage(),
              ProfileImage(),
            ],
          )
        ],
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sunset.jpg'),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.circle),
    );
  }
}

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          _buildDetails("Name: ", "Farhan"),
          _buildDetails("Age: ", "13 years old"),
          _buildDetails("Class: ", "Class 8"),
          _buildDetails("Hobbies: ", "Coding"),
          _buildDetails("Favourite Sports: ", "Football and Table Tennis"),
        ],
      ),
    );
  }
}

Widget _buildDetails(String heading, String value) {
  return Row(
    children: [
      Expanded(
        flex: 2,
        child: Text(
          heading,
          overflow: TextOverflow.clip,
          style: GoogleFonts.caveatBrush(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Text(
          value,
          overflow: TextOverflow.clip,
          style: GoogleFonts.caveatBrush(
            fontSize: 30,
          ),
        ),
      ),
    ],
  );
}

class ProfileActions extends StatelessWidget {
  const ProfileActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Row(
          children: [
            _buildIcon(Icons.restaurant, "Restaurant", context),
            _buildIcon(Icons.favorite, "Favourite", context),
            _buildIcon(Icons.menu, "Menu", context),
            _buildIcon(Icons.notification_add, "Order", context),
            _buildIcon(Icons.settings, "Setting", context),
            _buildIcon(Icons.person, "Account", context)
          ],
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

Widget _buildIcon(IconData icon, String text, BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Column(
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ScrollingWidgets(),
              ),
            );
          },
        ),
        Text(
          text,
          style: GoogleFonts.caveatBrush(fontSize: 30),
        ),
      ],
    ),
  );
}
