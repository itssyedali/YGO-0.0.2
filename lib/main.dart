import 'package:flutter/material.dart';
import 'package:ygo_hotel/screens/favorites_screen.dart';
import 'screens/InputPage.dart';
import 'models/constants.dart';
//import 'HotelInput.dart';

void main() => runApp(YGOhome());

class YGOhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kSecondaryColor,
      ),
      home: InputPage(),
      routes: {
        FavoritesScreen.routeName: (ctx) => FavoritesScreen(),
      },
    );
  }
}
