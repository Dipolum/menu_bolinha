import 'package:flutter/material.dart';

class AvatarTile extends StatelessWidget {
  final String title;
  final String url;
  final AssetImage image;

  const AvatarTile({Key key, this.title = '', this.url, this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 3.0),
      //color: Colors.red,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: CircleAvatar(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: image,
                  ),
                ),
                backgroundColor: Colors.white,
                minRadius: 30.0,
                maxRadius: 40.0,
              ),
            ),
            onTap: () {
              print(title);
            },
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
