import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tj_carousel_slider/services/platform_checker.dart';
import 'package:tj_carousel_slider/widgets/android_dropdown.dart';

import 'package:tj_carousel_slider/widgets/main_listview.dart';

class CarouselsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformChecker(context).isPhone()
        ? Scaffold(
            appBar: AppBar(
              title: Text('Toritama Jeans slider display'),
              backgroundColor: Colors.blueGrey,
            ),
            backgroundColor: Colors.grey[350],
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainListView(),
                  Column(
                    children: [
                      Text(
                        'Estilo do slider',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 40.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                            color: Colors.blueGrey),
                        height: 150.0,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: androidDropdown(context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        : Center(
            child: Text('This is not a phone in portrait mode!'),
          );
  }
}
