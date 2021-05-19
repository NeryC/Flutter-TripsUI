import 'package:flutter/material.dart';
import 'stars.dart';

class Review extends StatelessWidget {

  String imagePath = "assets/img/avatar.jpeg";
  String name = "Nery Cano";
  String details = "1 Review 5 photos";
  String comment = "Este es un local genial para cenar en familia";


  Review(this.imagePath, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              left: 20.0
          ),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 13.0,
              fontFamily: "Lato",
              color: Color(0xffa3a5a7)
            ),
          ),
        ),
        // new Stars(5)
      ],
    );
        

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato"
        ),
      ),
    );

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],

    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath)
        )
      ),
    );


    return Row(
      children: <Widget>[
        photo,
        userDetail
      ],
    );
  }
}
