import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String price = 199.99.toStringAsFixed(2).replaceAll('.', ',');
  final String productName;

  ProductCard({Key key, this.productName = 'shoes'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.zero,
        child: Container(
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(
                      ('images/$productName.png'),
                    ),
                  ),
                  Text(
                    'Tênis tamanho 36, bonito e confortável',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  starRatingIcons(5),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'R\$ $price',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      )),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Row starRatingIcons(int starRating) {
  List<Icon> myList = [];

  for (var i = 0; i < starRating; i++) {
    myList.add(Icon(
      Icons.star,
      size: 20,
      color: Colors.yellow[700],
    ));
  }

  return Row(
    children: myList,
  );
}
