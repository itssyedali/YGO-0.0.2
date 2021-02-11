import 'package:flutter/material.dart';
import '../models/constants.dart';

import '../widgets/states.dart';
import './favorites_screen.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(
      () {
        _selectedPageIndex = index;
      },
    );
    if (index == 1) {
      Navigator.of(context).pushNamed(FavoritesScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: SingleChildScrollView(
    //     physics: ScrollPhysics(),
    //   ),
    // );
    return Scaffold(
      body: Material(
        child: Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                color: kSecondaryColor,
              ),
              Container(
                // Background

                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(40)),
                    color: kPrimaryColor),
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
              ),
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
              Positioned(
                top: 220,
                left: 1,
                right: 1,
                child: SizedBox(
                  height: 600,
                  child: SingleChildScrollView(child: States()),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        unselectedItemColor: kSecondaryColor,
        selectedItemColor: Colors.black,
        backgroundColor: kPrimaryColor,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              //color: kSecondaryColor,
            ),
            backgroundColor: kPrimaryColor,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            label: 'Favorites',
            backgroundColor: kPrimaryColor,
            icon: Icon(
              Icons.favorite,
              //color: kSecondaryColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              //color: kSecondaryColor,
            ),
            backgroundColor: kPrimaryColor,
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            backgroundColor: kPrimaryColor,
            label: 'Profile',
            icon: Icon(
              Icons.person,
              //color: kSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
