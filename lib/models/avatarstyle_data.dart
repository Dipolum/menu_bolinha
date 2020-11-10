import 'package:flutter/foundation.dart';
import 'package:tj_carousel_slider/models/avatarstyle.dart';

class AvatarStyleData extends ChangeNotifier {
  String _selectedStyleKey = 'MyStyle1';

  AvatarStyle getAvatarStyle() {
    return getAvatarStyleData()[_selectedStyleKey];
  }

  String getSelectedStyleKey() {
    return _selectedStyleKey;
  }

  void updateSelectedStyleKey(String selectedStyleKey) {
    _selectedStyleKey = selectedStyleKey;
    print(selectedStyleKey);
    notifyListeners();
  }

  Map<String, AvatarStyle> getAvatarStyleData() {
    return _avatarStyles;
  }
}

final Map<String, AvatarStyle> _avatarStyles = {
  'MyStyle1': AvatarStyle(),
  'MyStyle2': AvatarStyle(fontSize: 30.0),
  'MyStyle3': AvatarStyle(),
  'MyStyle4': AvatarStyle(),
  'MyStyle5': AvatarStyle(),
};
