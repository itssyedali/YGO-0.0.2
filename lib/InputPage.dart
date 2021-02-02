import 'package:flutter/material.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: SingleChildScrollView(
    //     physics: ScrollPhysics(),
    //   ),
    // );
    return Stack(
      children: <Widget>[
        Container(
          color: kSecondaryColor,
        ),
        Container(
          // Background

          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
              color: kPrimaryColor),
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
        ),

        // Container(
        //     // color: kSecondaryColor,
        //     ), // Required some widget in between to float AppBar

        Positioned(
          // To take AppBar Size only
          top: 140.0,
          left: 40.0,
          right: 40.0,
          child: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            primary: false,
            title: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
