import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String shoeImage;
  RoundedImage({this.shoeImage});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: Image.asset(
        shoeImage,
        fit: BoxFit.contain,
      ),
    );
  }
}
