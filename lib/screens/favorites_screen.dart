import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  static const routeName = 'favorites-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'favorites',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
