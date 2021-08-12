import 'package:f1guide/models/driver/driver_model.dart';
import 'package:f1guide/pages/team/components/t_driver.dart';
import 'package:flutter/material.dart';

class TeamDrivers extends StatelessWidget {
  Driver driver1;
  Driver driver2;
  Color color;

  TeamDrivers({this.driver1, this.driver2, this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TDriver(
          driver: driver1,
          color: color,
        ),
        TDriver(
          driver: driver2,
          color: color,
        ),
      ],
    );
  }
}
