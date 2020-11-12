import 'package:flutter/material.dart';
import 'package:tj_carousel_slider/widgets/product_card.dart';
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
  SizedBox(height: 15.0),
  Card(
    margin: EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 10,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 6.0, top: 3.0),
      child: ListTile(
        title: Text(
          'Como funcionam as promocoes incriveis no Toritama',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
          textAlign: TextAlign.left,
        ),
        trailing: Icon(
          Icons.arrow_right,
          size: 30.0,
        ),
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
  Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    margin: EdgeInsets.all(10.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Align(
        alignment: Alignment.center,
        child: Text(
          'Olha so o que selecionamos pra voce:',
          style: TextStyle(
              fontSize: 19.0,
              color: Colors.grey[700],
              fontFamily: 'Fira-Sans',
              fontWeight: FontWeight.bold),
        ),
      ),
      Row(
        //mainAxisSize: MainAxisSize.max,
        children: [ProductCard(), ProductCard()],
      ),
      Row(
        //mainAxisSize: MainAxisSize.max,
        children: [ProductCard(), ProductCard()],
      ),
      Row(
        //mainAxisSize: MainAxisSize.max,
        children: [ProductCard(), ProductCard()],
      ),
    ]),
  ),
];
