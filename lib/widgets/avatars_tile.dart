import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tj_carousel_slider/models/avatarstyle_data.dart';
import 'package:tj_carousel_slider/services/networking.dart';

class AvatarTile extends StatelessWidget {
  final String title;
  final String url;
  final AssetImage image;

  const AvatarTile({Key key, this.title, this.url, this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var avatarStyle = Provider.of<AvatarStyleData>(context).getAvatarStyle();

    return Container(
      padding: EdgeInsets.only(top: 3.0),
      //color: Colors.red,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: avatarStyle.outerHorizontalPadding,
                  vertical: avatarStyle.outerVerticalPadding),
              child: CircleAvatar(
                backgroundColor: avatarStyle.borderColor,
                radius: avatarStyle.radius,
                child: CircleAvatar(
                  child: Padding(
                    padding: EdgeInsets.all(avatarStyle.innerPadding),
                    child: Image(
                      image: image,
                    ),
                  ),
                  backgroundColor: avatarStyle.backgroundColor,
                  radius: avatarStyle.radius - avatarStyle.borderRadius,
                ),
              ),
            ),
            onTap: () {
              NetworkHelper(url: url).launchURL();
            },
          ),
          SizedBox(height: avatarStyle.marginBtwnTextAndImage),
          Text(
            title,
            style: avatarStyle.textStyle,
          ),
        ],
      ),
    );
  }
}
