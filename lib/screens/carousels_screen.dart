import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tj_carousel_slider/screens/slider_picker_screen.dart';
import 'package:tj_carousel_slider/services/platform_checker.dart';
import 'package:tj_carousel_slider/widgets/main_listview.dart';
import 'package:tj_carousel_slider/widgets/top_card.dart';

class CarouselsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return true // use the platformer checker here to prevent it from being accessed from certain aspect ratios
        ? Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => SingleChildScrollView(
                    child: SliderStylePicker(),
                  ),
                );
              },
              child: Icon(
                Icons.add,
                size: 35,
              ),
            ),
            // appBar: AppBar(
            //   title: Text('Toritama Jeans slider display'),
            //   backgroundColor: Colors.blueGrey,
            // ),
            backgroundColor: Colors.grey[350],
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.black,
                    child: Column(
                      children: [
                        TopCard(
                          title: 'Procure no toritama',
                          leading: Icons.search,
                          borderRadius: 1000.0,
                          verticalMargin: 3,
                          horizontalMargin: 5,
                          onPressed: () {
                            print('abc');
                          },
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          //color: Colors.blueGrey,
                          child: FittedBox(
                            child: Image.asset('images/rainbowgradient.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        TopCard(
                          leading: Icons.pin_drop_outlined,
                          title: 'Ver ofertas para minha região',
                          trailing: Icons.arrow_right,
                          verticalPadding: 2,
                        )
                      ],
                    ),
                  ),
                  MainListView(),
                ],
              ),
            ),
          )
        : Center(
            child: Text('This is not a phone in portrait mode!'),
          );
  }
}
