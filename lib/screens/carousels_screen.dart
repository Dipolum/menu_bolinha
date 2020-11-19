import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tj_carousel_slider/widgets/avatars_list.dart';

class CarouselsScreen extends StatelessWidget {
  static String id = 'Carousel_Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x00000000),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [AvatarsList()],
      ),
    );
  }
}
