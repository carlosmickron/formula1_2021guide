import 'package:f1guide/models/driver/driver_model.dart';
import 'package:flutter/material.dart';

class HelmetPage extends StatelessWidget {
  Driver driver;

  HelmetPage({@required this.driver});

  @override
  Widget build(BuildContext context) {
    return Image.asset(driver.helmet);
  }
}
