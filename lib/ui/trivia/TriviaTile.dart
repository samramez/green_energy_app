import 'package:flutter/material.dart';
import 'package:green_energy_app/ui/TileWidget.dart';

class TriviaTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TileWidget(
      title: "Play Trivia",
      tileContent: Container(
        height: 120,
        width: double.infinity,
        child: RaisedButton(
          child: Text(
            "Begin the Trivia!",
            style: TextStyle(
              fontSize: 22, /*fontFamily: 'Roboto'*/
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.all(5),
          color: Colors.green.withOpacity(0.2),
          textColor: Theme.of(context).accentColor,
          onPressed: () {},
        ),
      ),
    );
  }
}
