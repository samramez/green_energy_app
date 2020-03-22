import 'package:flutter/material.dart';

import 'energies/EnergyTile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learn to be green"),
        ),
        body: EnergyTile());
  }
}
