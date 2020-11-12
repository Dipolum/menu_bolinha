import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tj_carousel_slider/screens/slider_picker_screen.dart';
import 'package:tj_carousel_slider/services/platform_checker.dart';
import 'package:tj_carousel_slider/widgets/main_listview.dart';
import 'package:tj_carousel_slider/widgets/top_card.dart';

class CarouselsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformChecker(context).isPhone()
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
                        Divider(
                          height: 4,
                          thickness: 4,
                          color: Colors.blueGrey,
                        ),
                        TopCard(
                          leading: Icons.pin_drop_outlined,
                          title: 'Ver ofertas para minha regiao',
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
