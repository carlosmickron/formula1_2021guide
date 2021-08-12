import 'package:f1guide/components/colors.dart';
import 'package:f1guide/models/team/team_model.dart';
import 'package:f1guide/pages/team/components/team_name.dart';
import 'package:flutter/material.dart';

import '../../components/info.dart';
import 'components/team_drivers.dart';

class TeamPage extends StatelessWidget {
  Team team;
  Color color;

  TeamPage({@required this.team, this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (team.wChamp != "0")
            Row(
              children: [
                Icon(Icons.star),
                SizedBox(
                  width: 10,
                )
              ],
            )
        ],
        iconTheme: IconThemeData(color: kWhite),
        brightness: Brightness.dark,
        backgroundColor: color,
        title: Text(
          team.name,
          style: TextStyle(color: kWhite),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 95,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Image.asset(team.photo),
                ),
                TeamName(name: team.fName, color: color, size: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 12),
                  child: Image.asset(team.carPhoto),
                ),
                Info(
                  icon: Icons.pin_drop_outlined,
                  label: "Sede:",
                  data: team.base,
                  color: color,
                ),
                Info(
                  icon: Icons.person,
                  label: "Chefe de Equipe:",
                  data: team.tChief,
                  color: color,
                ),
                Info(
                  icon: Icons.offline_bolt_outlined,
                  label: "Motor",
                  data: team.pUnity,
                  color: color,
                ),
                Info(
                  icon: Icons.emoji_events,
                  label: "Campeonatos",
                  data: team.wChamp,
                  color: color,
                ),
                Info(
                  icon: Icons.sports_motorsports,
                  label: "Pilotos",
                  data: "",
                  color: color,
                ),
                TeamDrivers(
                  driver1: team.driver1,
                  driver2: team.driver2,
                  color: color,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
