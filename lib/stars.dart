import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  int stars;

  Stars(this.stars);

  @override
  Widget build(BuildContext context) {

    final star = Container(
      margin: EdgeInsets.only(
          top: 360.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
          top: 360.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2c611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
          top: 360.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2c611),
      ),
    );

    return Row(
      children: <Widget>[
        star,
        star,
        star,
        star_half,
        star_border
      ],
    );
  }
}
