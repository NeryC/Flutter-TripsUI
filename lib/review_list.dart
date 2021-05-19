import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/avatar.jpeg","Nery Cano","1 Review 5 photos","Este es un local genial para cenar en familia"),
        Review("assets/img/avatar.jpeg","Nery Cano","1 Review 5 photos","Este es un local genial para cenar en familia"),
        Review("assets/img/avatar.jpeg","Nery Cano","1 Review 5 photos","Este es un local genial para cenar en familia"),
        Review("assets/img/avatar.jpeg","Nery Cano","1 Review 5 photos","Este es un local genial para cenar en familia"),
        Review("assets/img/avatar.jpeg","Nery Cano","1 Review 5 photos","Este es un local genial para cenar en familia"),
        Review("assets/img/avatar.jpeg","Nery Cano","1 Review 5 photos","Este es un local genial para cenar en familia"),
      ],
    );
  }
}
