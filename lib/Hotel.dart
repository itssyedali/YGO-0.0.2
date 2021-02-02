import 'package:flutter/material.dart';
import 'constants.dart';
import 'HotelInput.dart';

void main() => runApp(YGOhome());

class YGOhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kSecondaryColor,
      ),
      home: HotelInput(),
    );
  }
}
