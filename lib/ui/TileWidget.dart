import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  final String title;
  final Widget tileContent;

  TileWidget({Key key, this.title, this.tileContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 18.0, right: 18.0),
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                SizedBox(height: 12),
                tileContent,
                SizedBox(
                  height: 40.0,
                ),
              ],
            )));
  }
}
