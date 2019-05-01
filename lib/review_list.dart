import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg", "Juan carlos", "2 reviews - 5 Photos",
            "This is a amazing place"),
        Review("assets/img/people.jpg", "Juan carlos", "2 reviews - 5 Photos",
            "This is a amazing place"),
      ],
    );
  }
}
