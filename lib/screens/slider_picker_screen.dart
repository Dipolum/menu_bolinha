import 'package:flutter/material.dart';
import 'package:tj_carousel_slider/widgets/android_dropdown.dart';

class SliderStylePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF626262),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            color: Colors.blueGrey),
        child: Column(
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
              height: 150.0,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 20.0),
              child: androidDropdown(context),
            ),
          ],
        ),
      ),
    );
  }
}
