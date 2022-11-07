import 'package:flutter/material.dart';

class Products {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Products({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Products> products = [
  Products(
      id: 1,
      image: "assets/images/bag_1.png",
      title: "Office Code",
      price: 234,
      description: "For office bag",
      size: 12,
      color: Color(0xFF3D82AE)),
  Products(
      id: 2,
      image: "assets/images/bag_2.png",
      title: "Belt Bag",
      price: 230,
      description: "For office bag",
      size: 12,
      color: Color(0xFFD3A984)),
  Products(
      id: 3,
      image: "assets/images/bag_3.png",
      title: "Hang Top",
      price: 234,
      description: "For office bag",
      size: 10,
      color: Color(0xFF989493)),
  Products(
      id: 4,
      image: "assets/images/bag_4.png",
      title: "Old Fashion",
      price: 234,
      description: "For office bag",
      size: 11,
      color: Color(0xFFE6B398)),
  Products(
      id: 5,
      image: "assets/images/bag_5.png",
      title: "Office Code",
      price: 234,
      description: "For office bag",
      size: 13,
      color: Color(0xFFFB7883)),
  Products(
      id: 6,
      image: "assets/images/bag_6.png",
      title: "Office Code",
      price: 234,
      description: "For office bag",
      size: 12,
      color: Color(0xFFAEAEAE)),
];
