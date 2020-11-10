import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tj_carousel_slider/models/avatarstyle_data.dart';
import 'package:tj_carousel_slider/widgets/avatars_list.dart';

class CarouselsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toritama Jeans slider display'),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.grey[350],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AvatarsList(),
            Column(
              children: [
                Text(
                  'Estilo do slider',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 40.0,
                  ),
                ),
                Container(
                  height: 100.0,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(bottom: 20.0),
                  color: Colors.blueGrey,
                  child: iOSPicker(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

CupertinoPicker iOSPicker(BuildContext context) {
  var styleDataArray =
      Provider.of<AvatarStyleData>(context).getAvatarStyleData();

  List<Text> pickerItems = [];

  for (var item in styleDataArray.values) {
    pickerItems.add(
      Text(item.styleName),
    );
  }

  return CupertinoPicker(
    //backgroundColor: Colors.lightBlue,
    itemExtent: 32.0,
    onSelectedItemChanged: (selectedIndex) {
      //selectedCurrency = coinData.currenciesList[selectedIndex];
      //updateCoinCards();
    },
    children: pickerItems,
  );
}
