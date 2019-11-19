import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learn to be green"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      EnergyButton('Wind', EnergyType.wind),
                      EnergyButton('Solar', EnergyType.solar)
                    ]),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    EnergyButton('Hydro', EnergyType.hydro),
                    EnergyButton('Biomass', EnergyType.biomass)
                  ],)
              ],)
            ],
          ),
        )
    );
  }
}

class EnergyButton extends StatelessWidget {
  final String energyName;
  final EnergyType energyType;

  EnergyButton(this.energyName, this.energyType);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 100,
      width: 100,
      child: RaisedButton(
        child: Text(energyName),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.black)),
        padding: EdgeInsets.all(5),
        onPressed: () {},
      ),
    );
  }
}

enum EnergyType { wind, solar, hydro, biomass }
