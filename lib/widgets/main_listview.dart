import 'package:flutter/material.dart';
import 'package:tj_carousel_slider/widgets/reusable_card.dart';
import 'avatars_list.dart';

class MainListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _mainListView.length,
        itemBuilder: (context, index) {
          return _mainListView[index];
        },
      ),
    );
  }

  List<Widget> getWidgetList() {
    List<Widget> tempList = [];
    return tempList;
  }
}

List<Widget> _mainListView = [
  AvatarsList(),
  SizedBox(height: 10.0),
  ReusableCard(
    colour: Colors.grey[350],
    cardChild: ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image(
        image: AssetImage('images/ofertas.png'),
      ),
    ),
  ),
  ReusableCard(
    colour: Colors.grey[350],
    cardChild: ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image(
        image: AssetImage('images/ofertas.png'),
      ),
    ),
  ),
  ReusableCard(
    colour: Colors.grey[350],
    cardChild: ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image(
        image: AssetImage('images/ofertas.png'),
      ),
    ),
  ),
  ReusableCard(
    colour: Colors.grey[350],
    cardChild: ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image(
        image: AssetImage('images/ofertas.png'),
      ),
    ),
  ),
];
