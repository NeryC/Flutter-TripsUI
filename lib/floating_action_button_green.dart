import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {

  @override
  _FloatingActionButtonGreenState createState() => _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {

  bool _isPressed = false;

  void onPressedFav(){
    setState(() {
      _isPressed = !this._isPressed;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Agregaste a favoritos'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xff11da53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this._isPressed ? Icons.favorite : Icons.favorite_border
      ),
    );
  }
}
