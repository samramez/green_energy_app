import 'package:flutter/material.dart';
import 'package:green_energy_app/model/EnergyType.dart';

class EnergyPage extends StatelessWidget {
  final EnergyType energyType;

  const EnergyPage({Key key, this.energyType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getEnergyTypeString(energyType)),
        leading: BackButton(),
      ),
    );
  }
}
