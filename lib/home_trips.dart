import 'package:flutter/material.dart';
import 'package:trips_app/review_list.dart';

import 'description_place.dart';
import 'header_appBar.dart';

class HomeTrips extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          ListView(
            children: [
              DescriptionPlace("Long Bar", 4, "lobconseqdro nullin magna elit, consequat sed enim at, rhoncus dignissim dolor. Donec augue turpis, accumsan non pretium nec, maximus nec lacus. Mauris libero orci. Mauris ut nunc id ipsum sagittis scelerisque eget tempor diam."),
              ReviewList()
            ],
          ),
          HeaderAppBar()
        ]
    );
  }
}
