

import 'package:ecomerce_shoes_ui/models/product.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

var textSkipStyle = const TextStyle(
  color: textColor,
  fontSize: 16.0,
);

var textSelectedCategory = const TextStyle(
  color: Colors.white,
  fontSize: 16.0,
);

var cardText = const TextStyle(
  color: textColor,
  fontSize: 12.0,
  fontWeight: FontWeight.bold
);

var ratingText = const TextStyle(
  color: textColor,
  fontSize: 10.0,
);

var styleHeaderText = const TextStyle(
    fontSize: 24.0, fontWeight: FontWeight.bold, color: textColor);

var styleCategoryText = const TextStyle(
    fontSize: 28.0, fontWeight: FontWeight.bold, color: textColor);

var buttonTextStyle = const TextStyle(
  color: textColor,
  fontWeight: FontWeight.bold,
);


var categoryList = [
  'Nike',
  'Adidas',
  'Puma',
  'Levis',
  'Tommy',
  'Jordan',
  'Reebok',
  'Sparx',
];


var productList = [
  Product("Nike", "assets/images/sh2.png", "4.5", true, "\$399", Colors.blueAccent),
  Product("Puma", "assets/images/sh5.png", "3.5", true, "\$799", Colors.orangeAccent),
  Product("Red Tape","assets/images/sh3.png", "5.0", false, "\$299", Colors.brown),
  Product("Adidas", "assets/images/sh4.png", "4.5", false, "\$599", Colors.deepOrangeAccent),
  Product("Levis", "assets/images/sh1.png", "3.5", false, "\$399", Colors.green[300]),
  Product("Jordan", "assets/images/sh6.png", "2.5", true, "\$499", Colors.blueAccent),
  Product("Reebok", "assets/images/sh7.png", "4.0", false, "\$699", Colors.orangeAccent),
  Product("Campus", "assets/images/sh4.png", "3.0", true, "\$199", Colors.brown),
  Product("Sparx", "assets/images/sh3.png", "5.0", false, "\$499", Colors.deepOrangeAccent),
  Product("Gym", "assets/images/sh1.png", "4.0", true, "\$599", Colors.green[300]),
  Product("Tennis", "assets/images/sh5.png", "5.0", false, "\$299", Colors.blueAccent),
  Product("Puma", "assets/images/sh5.png", "3.5", true, "\$799", Colors.orangeAccent),

];