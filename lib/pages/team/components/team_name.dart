import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeamName extends StatelessWidget {
  String name;
  Color color;
  double size;

  TeamName({@required this.name, this.color, this.size = 16});

  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        child: Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: size),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
