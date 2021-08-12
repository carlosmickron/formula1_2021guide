import 'package:f1guide/components/colors.dart';
import 'package:f1guide/components/nav.dart';
import 'package:f1guide/models/team/team_model.dart';
import 'package:f1guide/pages/team/components/team_name.dart';
import 'package:flutter/material.dart';

import '../team_page.dart';

class TeamTile extends StatelessWidget {
  TeamTile(this.team);

  Team team;

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
    return GestureDetector(
      onTap: () => push(
          context,
          TeamPage(
            team: team,
            color: pickColor(team.color),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: kWhite,
              border: Border.all(
                  color: pickColor(team.color),
                  width: 2,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset(
                      team.photo,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TeamName(name: team.name, color: pickColor(team.color)),
                      Text(
                        "Pilotos:",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        team.driver1.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        team.driver2.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
