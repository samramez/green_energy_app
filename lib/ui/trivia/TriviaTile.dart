import 'package:flutter/material.dart';

class TriviaTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Play Trivia",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
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
                        side: BorderSide(color: Colors.black45)),
                    padding: EdgeInsets.all(5),
                    color: Colors.green.withOpacity(0.7),
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                )
              ],
            )));
  }
}
