// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:shopping_ui/components/body.dart';
import 'package:shopping_ui/constraints.dart';

import '../constraints.dart';

class HomePg extends StatefulWidget {
  const HomePg({super.key});

  @override
  State<HomePg> createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'Minimal Ui',
        style: TextStyle(color: kTextColor, fontFamily: 'RaleWay'),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Color(0xFF535353),
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: kTextColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: kTextColor,
          ),
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
