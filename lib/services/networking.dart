import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NetworkHelper {
  final String url;

  NetworkHelper({@required this.url});

  launchURL() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('could not launch url');
    }
  }
}
