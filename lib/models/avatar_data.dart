import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tj_carousel_slider/models/avatar.dart';

class AvatarData extends ChangeNotifier {
  final List<Avatar> avatars = [
    Avatar(
      title: 'Esportes',
      targetUrl: 'imgur.com',
      image: AssetImage('images/ball.png'),
    ),
    Avatar(
      title: 'Acessorios',
      targetUrl: 'imgur.com',
      image: AssetImage('images/accessories.png'),
    ),
    Avatar(
      title: 'Compras',
      targetUrl: 'imgur.com',
      image: AssetImage('images/basket.png'),
    ),
    Avatar(
      title: 'Beleza',
      targetUrl: 'imgur.com',
      image: AssetImage('images/beauty.png'),
    ),
    Avatar(
      title: 'Livros',
      targetUrl: 'imgur.com',
      image: AssetImage('images/books.png'),
    ),
    Avatar(
      title: 'Moda',
      targetUrl: 'imgur.com',
      image: AssetImage('images/hanger.png'),
    ),
    Avatar(
      title: 'Noticias',
      targetUrl: 'imgur.com',
      image: AssetImage('images/news.png'),
    ),
    Avatar(
      title: 'Calcados',
      targetUrl: 'imgur.com',
      image: AssetImage('images/shoes.png'),
    ),
  ];
}
