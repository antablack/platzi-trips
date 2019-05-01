import 'package:flutter/material.dart';
import 'package:platzi_trips_app/button_purple.dart';
import 'review_list.dart';
class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  Widget drawStarts(int score) {
    var stars = <Widget>[];
    for (var i = 1; i <= 5; i++) {
      Widget star = Container(
        margin: EdgeInsets.only(top: 323.0, right: 3.0),
        child: Icon(
           i <= score ? Icons.star : Icons.star_border,
          color: Color(0xFFf2C611),
        ),
      );
      stars.add(star);
    }
    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            this.namePlace,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        this.drawStarts(this.stars)
      ],
    );
    final description = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: new Text(
        this.descriptionPlace,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFF56575a)),
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title_stars, description, ButtonPurple("Navigate")],
    );
  }
}
