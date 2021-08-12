import 'package:f1guide/components/colors.dart';
import 'package:f1guide/components/info.dart';
import 'package:f1guide/components/nav.dart';
import 'package:f1guide/models/driver/driver_model.dart';
import 'package:flutter/material.dart';

import 'components/driver_card.dart';
import 'components/helmet_page.dart';

class DriverPage extends StatelessWidget {
  Driver driver;
  Color color;

  DriverPage({this.driver, this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kWhite),
        actions: [
          if (driver.wChamp != 0)
            Row(
              children: [
                Icon(Icons.star),
                SizedBox(
                  width: 10,
                )
              ],
            )
        ],
        brightness: Brightness.dark,
        title: Text(
          "${driver.name} - ${driver.number}",
          style: TextStyle(color: kWhite),
        ),
        centerTitle: true,
        backgroundColor: color,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width * .95,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Info(
                  icon: Icons.sports_motorsports_sharp,
                  label: "Piloto:",
                  data: driver.name,
                  color: color,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Info(
                      icon: Icons.tag,
                      label: "Número:",
                      data: "${driver.number}",
                      color: color,
                    ),
                    Info(
                      icon: Icons.confirmation_number_outlined,
                      label: "Idade:",
                      data: "${driver.age}",
                      color: color,
                    ),
                    Info(
                      icon: Icons.flag,
                      label: "País:",
                      data: driver.country,
                      color: color,
                    ),
                  ],
                ),
                DriverCard(driver: driver),
                Info(
                  icon: Icons.group,
                  label: "Equipe:",
                  data: driver.team.name,
                  color: color,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Info(
                      icon: Icons.event,
                      label: "GPs:",
                      data: "${driver.gPrix}",
                      color: color,
                    ),
                    Info(
                      icon: Icons.emoji_events,
                      label: "Vitórias:",
                      data: "${driver.wins}",
                      color: color,
                    ),
                    Info(
                      icon: Icons.celebration,
                      label: "Pódios:",
                      data: "${driver.podiums}",
                      color: color,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Info(
                          icon: Icons.looks_one,
                          label: "Pole Positions:",
                          data: "${driver.pole}",
                          color: color,
                        ),
                        Info(
                          icon: Icons.star,
                          label: "Campeonatos:",
                          data: "${driver.wChamp}",
                          color: color,
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () => push(context, HelmetPage(driver: driver)),
                      child: Image.asset(
                        driver.helmet,
                        height: 130,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
