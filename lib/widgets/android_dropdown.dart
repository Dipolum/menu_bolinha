import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tj_carousel_slider/models/avatarstyle_data.dart';

DropdownButton<String> androidDropdown(BuildContext context) {
  var avatarStyleData = Provider.of<AvatarStyleData>(context);
  List<DropdownMenuItem<String>> dropdownItems = [];
  for (var keyName in avatarStyleData.getAvatarStyleData().keys) {
    dropdownItems.add(
      DropdownMenuItem<String>(
        child: Text(
          keyName,
          style: TextStyle(fontSize: 30.0),
        ),
        value: keyName,
      ),
    );
  }

  return DropdownButton<String>(
    dropdownColor: Colors.blueGrey,
    value: avatarStyleData.getSelectedStyleKey(),
    items: dropdownItems,
    onChanged: (value) {
      avatarStyleData.updateSelectedStyleKey(value);
    },
  );
}
