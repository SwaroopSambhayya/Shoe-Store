import 'package:flutter/material.dart';
import 'package:shoe_market/constants.dart';
import 'package:shoe_market/screens/components/my_icon.dart';

class MyBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 20,
              offset: const Offset(0, 1),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              icon: Icon(
                MyIcon.home_1,
                color: secondaryColor.withOpacity(0.8),
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                MyIcon.heart_6,
                color: secondaryColor.withOpacity(0.8),
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                MyIcon.notification,
                color: secondaryColor.withOpacity(0.8),
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
