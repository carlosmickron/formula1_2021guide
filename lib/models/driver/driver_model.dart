import 'package:f1guide/models/team/team_model.dart';

class Driver {
  String name;
  Team team;
  String country;
  String flag;
  int wins;
  int podiums;
  int gPrix;
  int wChamp;
  int pole;
  String helmet;
  int number;
  int age;
  String photo;

  Driver(
      {this.name,
      this.team,
      this.country,
      this.flag,
      this.wins,
      this.podiums,
      this.gPrix,
      this.wChamp,
      this.pole,
      this.helmet,
      this.number,
      this.age,
      this.photo});
}
