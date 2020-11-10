import 'package:flutter/material.dart';
import 'package:tj_carousel_slider/models/avatar_data.dart';
import 'package:tj_carousel_slider/widgets/avatars_list.dart';
import 'package:tj_carousel_slider/widgets/avatars_tile.dart';

class CarouselsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toritama Jeans slider display')),
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AvatarsList(),
          ],
        ),
      ),
    );
  }
}
