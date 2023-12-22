import 'package:flutter/material.dart';

class FruitModel {
  late String name;
  late String image;
  late String description;
  late Color color;
  late String price;

  FruitModel({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
});

}