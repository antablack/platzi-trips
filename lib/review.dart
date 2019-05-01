import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathName = "assets/img/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is amaizin place in Sri Lanka";

  Review(this.pathName, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child:
          Text(this.comment, style: TextStyle(fontSize: 13.0, fontFamily: "Lato", fontWeight: FontWeight.bold)),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child:
          Text(this.details, style: TextStyle(fontSize: 13.0, fontFamily: "Lato", color: Colors.grey)),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child:
          Text(this.name, style: TextStyle(fontSize: 17.0, fontFamily: "Lato", fontWeight: FontWeight.w600)),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 5.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(this.pathName))),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}
