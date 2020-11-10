import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:tj_carousel_slider/models/avatarstyle.dart';

class AvatarStyleData extends ChangeNotifier {
  String _selectedStyleKey;

  AvatarStyle getAvatarStyle() {
    return getAvatarStyleData()[_selectedStyleKey];
  }

  void updateSelectedStyleKey(String selectedStyleKey) {
    _selectedStyleKey = selectedStyleKey;
    print(selectedStyleKey);
    notifyListeners();
  }

  Map<String, AvatarStyle> getAvatarStyleData() {
    Map<String, AvatarStyle> avatarStyleData = {};

    for (var avatarStyle in _avatarstyles) {
      avatarStyleData[avatarStyle.styleName] = avatarStyle;
    }

    return avatarStyleData;
  }
}

final List<AvatarStyle> _avatarstyles = [
  AvatarStyle(
    styleName: 'MyStyle1',
    textStyle: TextStyle(),
  ),
  AvatarStyle(
    styleName: 'MyStyle2',
    textStyle: TextStyle(),
  ),
  AvatarStyle(
    styleName: 'MyStyle3',
    textStyle: TextStyle(),
  ),
];
