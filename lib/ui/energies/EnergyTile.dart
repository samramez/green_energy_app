import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:green_energy_app/model/EnergyType.dart';
import 'package:green_energy_app/ui/TileWidget.dart';
import 'package:page_transition/page_transition.dart';

import 'EnergyPage.dart';

class EnergyTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TileWidget(
      title: "Learn more about energies",
      tileContent: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              EnergyButton(EnergyType.wind, FontAwesomeIcons.wind),
              EnergyButton(EnergyType.solar, FontAwesomeIcons.solarPanel),
              EnergyButton(EnergyType.biomass, FontAwesomeIcons.tree),
              EnergyButton(EnergyType.hydro, FontAwesomeIcons.water),
            ],
          )
        ],
      ),
    );
  }
}

class EnergyButton extends StatelessWidget {
  final EnergyType energyType;
  final IconData icon;

  EnergyButton(this.energyType, this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _handleEnergyButtonClick(energyType, context);
          },
          child: Container(
            margin: EdgeInsets.all(5),
            height: 60,
            width: 60,
            child: Icon(
              icon,
              size: 25.0,
              color: Theme.of(context).primaryColor,
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30.0)),
          ),
        ),
        Text(getEnergyTypeString(energyType))
      ],
    );
  }

  void _handleEnergyButtonClick(EnergyType energyType, BuildContext context) {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.rightToLeft,
            duration: Duration(milliseconds: 200),
            child: EnergyPage(
              energyType: energyType,
            )));
  }
}
