import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class TripsApp extends StatefulWidget {

  @override
  _TripsAppState createState() => _TripsAppState();
}

class _TripsAppState extends State<TripsApp> {

  int indexTab = 0;

  final List<Widget> widgetChildrens = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetChildrens[indexTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTab,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ""
            ),
          ],
        ),
      ),
    );
  }
}
