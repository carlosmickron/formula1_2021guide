import 'package:f1guide/components/nav.dart';
import 'package:f1guide/models/driver/driver_model.dart';
import 'package:f1guide/pages/driver/driver_page.dart';
import 'package:flutter/material.dart';

class TDriver extends StatelessWidget {
  Driver driver;
  Color color;

  TDriver({@required this.driver, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () => push(
            context,
            DriverPage(
              driver: driver,
              color: color,
            )),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: color, width: 5),
            borderRadius: BorderRadius.circular(20),
          ),
          width: MediaQuery.of(context).size.width * .45,
          child: Column(
            children: [
              Text(driver.name),
              ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14)),
                child: Image.asset(
                  driver.photo,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
