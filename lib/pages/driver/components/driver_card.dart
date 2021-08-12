import 'package:f1guide/models/driver/driver_model.dart';
import 'package:flutter/material.dart';

class DriverCard extends StatelessWidget {
  Driver driver;

  DriverCard({this.driver});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Stack(
        children: [
          ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.all(Radius.circular(14)),
            child: Image.asset(
              driver.photo,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: ClipOval(
              child: Image.asset(
                driver.flag,
                height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
