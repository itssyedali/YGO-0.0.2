import 'package:flutter/material.dart';

import './states_item.dart';
import '../dummy.dart';

class StatesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(20),
      children: Dummy_Data.map(
        (statesdata) => StatesItem(statesdata.imageUrl, statesdata.title),
      ).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 150 / 250,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
    );
  }
}
