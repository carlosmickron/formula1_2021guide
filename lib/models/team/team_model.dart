import 'package:f1guide/models/driver/driver_model.dart';

class Team {
  String fName;
  String name;
  String base;
  String tChief;
  String pUnity;
  String wChamp;
  String photo;
  String carPhoto;
  String color;
  Driver driver1;
  Driver driver2;

  Team(
      {this.fName,
      this.name,
      this.base,
      this.tChief,
      this.pUnity,
      this.wChamp,
      this.photo,
      this.carPhoto,
      this.color,
      this.driver1,
      this.driver2});
}
