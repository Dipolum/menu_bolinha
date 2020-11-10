import 'package:flutter/material.dart';

class AvatarTile extends StatelessWidget {
  final title;
  final url;

  const AvatarTile({Key key, this.title = '', this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 3.0),
      color: Colors.red,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: CircleAvatar(
                minRadius: 30.0,
                maxRadius: 40.0,
              ),
            ),
            onTap: () {
              print(url);
            },
          ),
          SizedBox(height: 7),
          Text(
            title,
            style: TextStyle(color: Colors.lightBlueAccent),
          ),
        ],
      ),
    );
  }
}
