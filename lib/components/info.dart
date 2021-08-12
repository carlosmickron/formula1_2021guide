import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  IconData icon;
  String label;
  String data;
  Color color;

  Info({this.icon, this.label, this.data, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              SizedBox(
                width: 10,
              ),
              Text(
                label,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ],
          ),
          Text(
            data,
            style: TextStyle(
                color: color, fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}
