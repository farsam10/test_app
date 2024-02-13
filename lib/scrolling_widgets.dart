import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollingWidgets extends StatelessWidget {
  ScrollingWidgets({super.key});

  final List<String> data = List.generate(12, (index) => "${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          final math.Random random = math.Random(index);
          return GridTile(
            header: GridTileBar(
              title:
                  Text('$index', style: const TextStyle(color: Colors.black)),
            ),
            child: Container(
              margin: const EdgeInsets.all(12.0),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                gradient: const RadialGradient(
                  colors: <Color>[Color(0x0F88EEFF), Color(0x2F0099BB)],
                ),
              ),
              child: FlutterLogo(
                style: FlutterLogoStyle
                    .values[random.nextInt(FlutterLogoStyle.values.length)],
              ),
            ),
          );
        },
      ),
    );
  }
}
