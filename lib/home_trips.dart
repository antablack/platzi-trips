import 'package:flutter/material.dart';
import 'package:platzi_trips_app/description_place.dart';
import 'package:platzi_trips_app/header_appbar.dart';
import 'package:platzi_trips_app/review_list.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String descriptionDummy =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur volutpat urna vel fermentum porta. Sed pretium tortor neque, at tristique nisl iaculis vitae. Cras nunc diam, vehicula ac nisl ut, pulvinar rhoncus nunc. Donec varius porta odio quis fermentum. Fusce vitae dui in ipsum feugiat condimentum. Maecenas at nisi vitae felis dapibus feugiat. Phasellus commodo diam tortor, bibendum porttitor magna consectetur vitae. Mauris dapibus, est eu accumsan auctor, tortor ex porta purus, eu ultricies est lorem ac leo. Donec eget dolor sit amet tortor bibendum viverra. Nulla facilisi";

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Barranquilla", 3, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
