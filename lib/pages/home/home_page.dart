import 'package:f1guide/components/colors.dart';
import 'package:f1guide/models/driver/driver_model.dart';
import 'package:f1guide/models/team/team_model.dart';
import 'package:f1guide/pages/driver/components/driver_tile.dart';
import 'package:f1guide/pages/team/components/team_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Alfa Romeo
    Team ar = Team(
      fName: "Alfa Romeo Racing ORLEN",
      name: "Alfa Romeo",
      base: "Hinwil, Suíça",
      tChief: "Frédéric Vasseur",
      pUnity: "Ferrari",
      wChamp: "0",
      photo: "assets/ar.jpg",
      carPhoto: "assets/ar.png",
      color: "kAlfaRomeo",
    );
    Driver ar1 = Driver(
        name: "Kimi Räikkönen",
        team: ar,
        country: "Finlândia",
        flag: "assets/fin.gif",
        wins: 21,
        podiums: 103,
        gPrix: 343,
        pole: 18,
        wChamp: 1,
        helmet: "assets/ar1h.png",
        number: 7,
        photo: "assets/ar1.jpg",
        age: 41);
    Driver ar2 = Driver(
        name: "Antonio Giovinazzi",
        team: ar,
        country: "Itália",
        flag: "assets/ita.jpg",
        wins: 0,
        podiums: 0,
        gPrix: 51,
        wChamp: 0,
        pole: 0,
        helmet: "assets/ar2h.png",
        number: 99,
        photo: "assets/ar2.jpg",
        age: 27);
    ar.driver1 = ar1;
    ar.driver2 = ar2;
    //AlphaTauri
    Team at = Team(
      fName: "Scuderia AlphaTauri Honda",
      name: "AlphaTauri",
      base: "Faenza, Itália",
      tChief: "Franz Tost",
      pUnity: "Honda",
      wChamp: "0",
      photo: "assets/at.jpg",
      carPhoto: "assets/at.png",
      color: "kAlphaTauri",
    );
    Driver at1 = Driver(
        name: "Pierre Gasly",
        team: at,
        country: "França",
        flag: "assets/fra.gif",
        wins: 1,
        podiums: 3,
        gPrix: 75,
        wChamp: 0,
        pole: 0,
        helmet: "assets/at1h.png",
        number: 10,
        photo: "assets/at1.jpg",
        age: 25);
    Driver at2 = Driver(
        name: "Yuki Tsunoda",
        team: at,
        country: "Japão",
        flag: "assets/jap.jpg",
        wins: 0,
        podiums: 0,
        gPrix: 11,
        wChamp: 0,
        pole: 0,
        helmet: "assets/at2h.png",
        number: 22,
        photo: "assets/at2.jpg",
        age: 21);
    at.driver1 = at1;
    at.driver2 = at2;
    //Alpine
    Team al = Team(
      fName: "Alpine F1 Team",
      name: "Alpine",
      base: "Enstone, Reino Unido",
      tChief: "Davide Brivio",
      pUnity: "Renault",
      wChamp: "2",
      photo: "assets/al.jpg",
      carPhoto: "assets/al.png",
      color: "kAlpine",
    );
    Driver al1 = Driver(
        name: "Fernando Alonso",
        team: al,
        country: "Espanha",
        flag: "assets/esp.jpg",
        wins: 32,
        podiums: 97,
        gPrix: 325,
        pole: 22,
        wChamp: 2,
        helmet: "assets/al1h.png",
        number: 14,
        photo: "assets/al1.jpg",
        age: 40);
    Driver al2 = Driver(
        name: "Esteban Ocon",
        team: al,
        country: "França",
        flag: "assets/fra.gif",
        wins: 1,
        podiums: 2,
        gPrix: 78,
        wChamp: 0,
        pole: 0,
        helmet: "assets/al2h.png",
        number: 31,
        photo: "assets/al2.jpg",
        age: 24);
    al.driver1 = al1;
    al.driver2 = al2;
    //AstonMartin
    Team am = Team(
      fName: "Aston Martin Cognizant F1 Team",
      name: "Aston Martin",
      base: "Silverstone, Reino Unido",
      tChief: "Otmar Szafnauer",
      pUnity: "Mercedes",
      wChamp: "0",
      photo: "assets/am2.png",
      carPhoto: "assets/am.png",
      color: "kAstonMartin",
    );
    Driver am1 = Driver(
        name: "Sebastian Vettel",
        team: am,
        country: "Alemanha",
        flag: "assets/ger.jpg",
        wins: 53,
        podiums: 122,
        gPrix: 269,
        wChamp: 4,
        pole: 57,
        helmet: "assets/am1h.png",
        number: 5,
        photo: "assets/am1.jpg",
        age: 34);
    Driver am2 = Driver(
        name: "Lance Stroll",
        team: am,
        country: "Canadá",
        flag: "assets/can.jpg",
        wins: 0,
        podiums: 3,
        gPrix: 89,
        wChamp: 0,
        helmet: "assets/am2h.png",
        number: 18,
        photo: "assets/am2.jpg",
        age: 22);
    am.driver1 = am1;
    am.driver2 = am2;
    //Ferrari
    Team fe = Team(
      fName: "Scuderia Ferrari Mission Winnow",
      name: "Ferrari",
      base: "Maranello, Itália",
      tChief: "DMattia Binotto",
      pUnity: "Ferrari",
      wChamp: "16",
      photo: "assets/fe.jpg",
      carPhoto: "assets/fe.png",
      color: "kFerrari",
    );
    Driver fe1 = Driver(
        name: "Charles Leclerc",
        team: fe,
        country: "Mônaco",
        flag: "assets/mon.jpg",
        wins: 2,
        podiums: 13,
        gPrix: 70,
        wChamp: 0,
        pole: 9,
        helmet: "assets/fe1h.png",
        number: 16,
        photo: "assets/fe1.jpg",
        age: 23);
    Driver fe2 = Driver(
        name: "Carlos Sainz",
        team: fe,
        country: "Espanha",
        flag: "assets/esp.jpg",
        wins: 0,
        podiums: 4,
        gPrix: 130,
        wChamp: 0,
        pole: 0,
        helmet: "assets/fe2h.png",
        number: 55,
        photo: "assets/fe2.jpg",
        age: 26);
    fe.driver1 = fe1;
    fe.driver2 = fe2;
    //Haas
    Team ha = Team(
      fName: "Uralkali Haas F1 Team",
      name: "Haas",
      base: "Kannapolis, Estados Unidos",
      tChief: "Guenther Steiner",
      pUnity: "Ferrari",
      wChamp: "0",
      photo: "assets/ha.jpg",
      carPhoto: "assets/ha.png",
      color: "kHaas",
    );
    Driver ha1 = Driver(
        name: "Mick Schumacher",
        team: ha,
        country: "Alemanha",
        flag: "assets/ger.jpg",
        wins: 0,
        podiums: 0,
        gPrix: 11,
        wChamp: 0,
        pole: 0,
        helmet: "assets/ha1h.png",
        number: 47,
        photo: "assets/ha1.jpg",
        age: 22);
    Driver ha2 = Driver(
        name: "Nikita Mazepin",
        team: ha,
        country: "Rússia",
        flag: "assets/rus.png",
        wins: 0,
        podiums: 0,
        gPrix: 11,
        wChamp: 0,
        pole: 0,
        helmet: "assets/ha2h.png",
        number: 22,
        photo: "assets/ha2.jpg",
        age: 24);
    ha.driver1 = ha1;
    ha.driver2 = ha2;
    //McLaren
    Team mc = Team(
      fName: "McLaren F1 Team",
      name: "McLaren",
      base: "Woking, Reino Unido",
      tChief: "Andreas Seidl",
      pUnity: "Mercedes",
      wChamp: "8",
      photo: "assets/mc.jpg",
      carPhoto: "assets/mc.png",
      color: "kMcLaren",
    );
    Driver mc1 = Driver(
        name: "Daniel Ricciardo",
        team: mc,
        country: "Austrália",
        flag: "assets/aus.jpg",
        wins: 7,
        podiums: 31,
        gPrix: 199,
        wChamp: 0,
        pole: 3,
        helmet: "assets/mc1h.png",
        number: 3,
        photo: "assets/mc1.jpg",
        age: 32);
    Driver mc2 = Driver(
        name: "Lando Norris",
        team: mc,
        country: "Reino Unido",
        flag: "assets/eng.jpg",
        wins: 0,
        podiums: 4,
        gPrix: 49,
        wChamp: 0,
        pole: 0,
        helmet: "assets/mc2h.png",
        number: 4,
        photo: "assets/mc2.jpg",
        age: 21);
    mc.driver1 = mc1;
    mc.driver2 = mc2;
    //Mercedes
    Team me = Team(
      fName: "Mercedes-AMG Petronas F1 Team",
      name: "Mercedes",
      base: "Brackley, Reino Unido",
      tChief: "Toto Wolff",
      pUnity: "Mercedes",
      wChamp: "7",
      photo: "assets/me.jpg",
      carPhoto: "assets/me.png",
      color: "kMercedes",
    );
    Driver me1 = Driver(
        name: "Lewis Hamilton",
        team: me,
        country: "Reino Unido",
        flag: "assets/eng.jpg",
        wins: 99,
        podiums: 173,
        gPrix: 277,
        wChamp: 7,
        pole: 101,
        helmet: "assets/me1h.png",
        number: 44,
        photo: "assets/me1.jpg",
        age: 36);
    Driver me2 = Driver(
        name: "Valtteri Bottas",
        team: me,
        country: "Finlândia",
        flag: "assets/fin.gif",
        wins: 9,
        podiums: 62,
        gPrix: 167,
        wChamp: 0,
        pole: 17,
        helmet: "assets/me2h.png",
        number: 77,
        photo: "assets/me2.jpg",
        age: 31);
    me.driver1 = me1;
    me.driver2 = me2;
    //RedBull
    Team rb = Team(
      fName: "Red Bull Racing Honda",
      name: "Red Bull",
      base: "Milton Keynes, Reino Unido",
      tChief: "Christian Horner",
      pUnity: "Honda",
      wChamp: "4",
      photo: "assets/rb.jpg",
      carPhoto: "assets/rb.png",
      color: "kRedBull",
    );
    Driver rb1 = Driver(
        name: "Max Verstappen",
        team: rb,
        country: "Holanda",
        flag: "assets/net.gif",
        wins: 15,
        podiums: 50,
        gPrix: 130,
        wChamp: 0,
        pole: 8,
        helmet: "assets/rb1h.png",
        number: 33,
        photo: "assets/rb1.jpg",
        age: 23);
    Driver rb2 = Driver(
        name: "Sergio Perez",
        team: rb,
        country: "México",
        flag: "assets/mex.gif",
        wins: 2,
        podiums: 12,
        gPrix: 203,
        wChamp: 0,
        pole: 0,
        helmet: "assets/rb2h.png",
        number: 11,
        photo: "assets/rb2.jpg",
        age: 31);
    rb.driver1 = rb1;
    rb.driver2 = rb2;
    //Williams
    Team wi = Team(
      fName: "Williams Racing",
      name: "Williams",
      base: "Grove, Reino Unido",
      tChief: "Jost Capito",
      pUnity: "Mercedes",
      wChamp: "9",
      photo: "assets/wi.jpg",
      carPhoto: "assets/wi.png",
      color: "kWilliams",
    );
    Driver wi1 = Driver(
        name: "George Russell",
        team: wi,
        country: "Reino Unido",
        flag: "assets/eng.jpg",
        wins: 0,
        podiums: 0,
        gPrix: 49,
        wChamp: 0,
        pole: 0,
        helmet: "assets/wi1h.png",
        number: 63,
        photo: "assets/wi1.jpg",
        age: 23);
    Driver wi2 = Driver(
        name: "Nicholas Latifi",
        team: wi,
        country: "Canadá",
        flag: "assets/can.jpg",
        wins: 0,
        podiums: 0,
        gPrix: 28,
        pole: 0,
        wChamp: 0,
        helmet: "assets/wi2h.png",
        number: 22,
        photo: "assets/wi2.jpg",
        age: 26);
    wi.driver1 = wi1;
    wi.driver2 = wi2;

    List<Team> teams = [ar, at, al, am, fe, ha, mc, me, rb, wi];

    List<Driver> drivers = [
      ar2,
      ar1,
      at1,
      at2,
      al1,
      al2,
      am1,
      am2,
      fe1,
      fe2,
      ha1,
      ha2,
      mc1,
      mc2,
      me1,
      me2,
      rb1,
      rb2,
      wi1,
      wi2
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/f1min.png",
                height: 40,
              ),
              Text(
                "Temporada - 2021",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
          centerTitle: true,
          bottom: TabBar(
            labelColor: kPrimaryMark,
            labelStyle: TextStyle(
                fontSize: 20, color: kPrimaryMark, fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(
              fontSize: 16,
            ),
            indicatorColor: kPrimaryMark,
            indicatorWeight: 4,
            tabs: [
              Tab(
                text: "Equipes",
              ),
              Tab(text: "Pilotos")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: teams.length,
              itemBuilder: (context, index) => TeamTile(teams[index]),
            ), // Teams List
            ListView.builder(
              itemCount: drivers.length,
              itemBuilder: (context, index) => DriverTile(drivers[index]),
            ), // Drivers List
          ],
        ),
      ),
    );
  }
}
