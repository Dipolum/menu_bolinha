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
              child: (avatarStyle.backgroundImage == null)
                  ? CircleAvatar(
                      backgroundColor: avatarStyle.secondBorderColor,
                      radius: avatarStyle.radius,
                      child: CircleAvatar(
                        backgroundColor: avatarStyle.borderColor,
                        radius:
                            avatarStyle.radius - avatarStyle.secondBorderRadius,
                        child: CircleAvatar(
                          child: Padding(
                            padding: EdgeInsets.all(avatarStyle.innerPadding),
                            child: Image(
                              image: image,
                            ),
                          ),
                          backgroundColor: avatarStyle.backgroundColor,
                          radius: avatarStyle.radius -
                              avatarStyle.borderRadius -
                              avatarStyle.secondBorderRadius,
                        ),
                      ),
                    )
                  : Stack(
                      children: [
                        ClipOval(
                            child: Image(
                          image: avatarStyle.backgroundImage,
                          fit: BoxFit.cover,
                          width: avatarStyle.radius * 2,
                          height: avatarStyle.radius * 2,
                        )),
                        Align(
                          child: Padding(
                            padding: EdgeInsets.all(avatarStyle.borderRadius),
                            child: CircleAvatar(
                              child: Padding(
                                padding:
                                    EdgeInsets.all(avatarStyle.innerPadding),
                                child: Image(
                                  image: image,
                                ),
                              ),
                              backgroundColor: avatarStyle.backgroundColor,
                              radius: avatarStyle.radius -
                                  avatarStyle.borderRadius -
                                  avatarStyle.secondBorderRadius,
                            ),
                          ),
                        )
                      ],
                    ),
            ),
            onTap: () {
              NetworkHelper(url: url).launchURL();
            },
          ),
          SizedBox(height: avatarStyle.marginBtwnTextAndImage),
          Text(
            avatarStyle.allLowerCase ? title.toLowerCase() : title,
            style: avatarStyle.textStyle,
          ),
        ],
      ),
    );
  }
}
