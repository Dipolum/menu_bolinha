import 'package:flutter/material.dart';
//import 'dart:io' show Platform;

class PlatformChecker {
  final BuildContext context;
  PlatformChecker(this.context);

  ThisDevice _checkPlatform() {
    final double width = MediaQuery.of(context).size.width;

    if (width <= 600) {
      return ThisDevice.isPhone;
    } else if (width <= 960) {
      return ThisDevice.isTablet;
    } else {
      return ThisDevice.isDesktop;
    }
  }

  bool isPhone() {
    return (_checkPlatform() == ThisDevice.isPhone);
  }

  bool isTablet() {
    return (_checkPlatform() == ThisDevice.isTablet);
  }

  bool isDesktop() {
    return (_checkPlatform() == ThisDevice.isDesktop);
  }
}

enum ThisDevice {
  isPhone,
  isTablet,
  isDesktop,
}

// https://stackoverflow.com/questions/49484549/can-we-check-the-device-to-be-smartphone-or-tablet-in-flutter
// You can use this if you don't have an access to BuildContext. I took it out from sdk/flutter/packages/flutter/lib/src/widgets/app.dart:1252.

//   String getDeviceType() {
//     final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
//     return data.size.shortestSide < 600 ? 'phone' :'tablet';
//   }
