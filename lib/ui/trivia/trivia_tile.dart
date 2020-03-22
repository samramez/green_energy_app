import 'package:flutter/material.dart';

class TriviaTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 120.0),
      child: SizedBox(
        child: Column(
          children: <Widget>[
            Text(
                "Play Trivia",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)
            ),
            RaisedButton(

            )
          ],
        )
      )
    );
  }
}
