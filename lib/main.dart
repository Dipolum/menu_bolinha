import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tj_carousel_slider/screens/carousels_screen.dart';
import 'models/avatar_data.dart';
import 'models/avatarstyle_data.dart';
import 'models/major_banner_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AvatarData>(create: (context) => AvatarData()),
        ChangeNotifierProvider<AvatarStyleData>(
            create: (context) => AvatarStyleData()),
        ChangeNotifierProvider<MajorBannerData>(
            create: (context) => MajorBannerData()),
      ],
      child: MaterialApp(
        home: CarouselsScreen(),
        theme: ThemeData(fontFamily: 'SourceSansPro'),
      ),
    );
  }
}
