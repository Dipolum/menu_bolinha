import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tj_carousel_slider/widgets/avatars_list.dart';

class CarouselsScreen extends StatelessWidget {
  static String id = 'Carousel_Screen';
  @override
  Widget build(BuildContext context) {
    return true // use the platformer checker here to prevent it from being accessed from certain aspect ratios
        ? Scaffold(
            // appBar: AppBar(
            //   title: Text('Toritama Jeans slider display'),
            //   backgroundColor: Colors.blueGrey,
            // ),
            backgroundColor: Color(0x00000000),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [AvatarsList()],
            ),
          )
        : Center(
            child: Text('This is not a phone in portrait mode!'),
          );
  }
}
