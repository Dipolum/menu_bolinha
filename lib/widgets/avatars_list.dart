import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tj_carousel_slider/models/avatar_data.dart';
import 'package:tj_carousel_slider/widgets/avatars_tile.dart';

class AvatarsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ListViews expand to the maximum size possible on both CrossAxis and MainAxis, you can limit the MainAxis, but cannot limit the CrossAxis
    // This solution allows the CrossAxis to be limited to the size of the children of the ListView.
    // This idea was found here: https://stackoverflow.com/questions/50155738/flutter-minimum-height-on-horizontal-list-view
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: buildList(context),
          ),
        ),
      ],
    );
  }
}

List<AvatarTile> buildList(BuildContext context) {
  List<AvatarTile> myAvatars = [];
  for (var item in Provider.of<AvatarData>(context).avatars) {
    myAvatars.add(AvatarTile(
      title: item.title,
    ));
  }
  return myAvatars;
}

// ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemBuilder: (context, index) {
//         return AvatarTile(
//           title: Provider.of<AvatarData>(context).avatars[index].title,
//         );
//       },
//       itemCount: Provider.of<AvatarData>(context).avatars.length,
//     )
