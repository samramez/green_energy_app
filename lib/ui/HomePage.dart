import 'package:flutter/material.dart';
import 'package:green_energy_app/ui/energies/EnergyTile.dart';
import 'package:green_energy_app/ui/trivia/trivia_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learn to be green"),
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            children: <Widget>[
              TriviaTile(),
              EnergyTile()
            ],
          ),
        ));
  }
}
