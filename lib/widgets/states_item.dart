import 'package:flutter/material.dart';
import 'package:ygo_hotel/models/constants.dart';

class StatesItem extends StatelessWidget {
  final String imageurl;
  final String title;

  StatesItem(this.imageurl, this.title);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    imageurl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    width: 160,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      title,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 2),
              child: Row(
                children: [
                  Text(
                    'Ratings',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.star),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
