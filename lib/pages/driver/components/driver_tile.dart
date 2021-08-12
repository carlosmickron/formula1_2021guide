import 'package:f1guide/components/colors.dart';
import 'package:f1guide/components/nav.dart';
import 'package:f1guide/models/driver/driver_model.dart';
import 'package:flutter/material.dart';

import '../driver_page.dart';

class DriverTile extends StatelessWidget {
  DriverTile(this.driver);

  Driver driver;

  @override
  Color pickColor(String color) {
    switch (color) {
      case "kAlfaRomeo":
        return kAlfaRomeo;
        break;
      case "kAlphaTauri":
        return kAlphaTauri;
        break;
      case "kAlpine":
        return kAlpine;
        break;
      case "kAstonMartin":
        return kAstonMartin;
        break;
      case "kFerrari":
        return kFerrari;
        break;
      case "kHaas":
        return kHaas;
        break;
      case "kMcLaren":
        return kMcLaren;
        break;
      case "kMercedes":
        return kMercedes;
        break;
      case "kRedBull":
        return kRedBull;
        break;
      case "kWilliams":
        return kWilliams;
        break;
    }
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      child: GestureDetector(
        onTap: () => push(context,
            DriverPage(driver: driver, color: pickColor(driver.team.color))),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: kWhite,
              border: Border.all(
                  color: pickColor(driver.team.color),
                  width: 2,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 10),
                      child: Stack(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              driver.photo,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: ClipOval(
                              child: Image.asset(
                                driver.flag,
                                height: 20,
                              ),
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, right: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${driver.name} ${driver.number}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              if (driver.wChamp != 0)
                                Icon(
                                  Icons.star,
                                  size: 30,
                                  color: kPrimaryColor,
                                )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      "Equipe:",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      driver.team.name,
                                      style: TextStyle(
                                          color: pickColor(driver.team.color),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Vitórias: ${driver.wins} Pódios: ${driver.podiums}",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    driver.helmet,
                                    height: 60,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
