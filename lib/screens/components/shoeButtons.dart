import 'package:flutter/material.dart';
import 'package:shoe_market/constants.dart';

class ShoeButton extends StatelessWidget {
  final String shoeType;
  final String shoeImage;
  ShoeButton({this.shoeType, this.shoeImage});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 5),
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 55,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(26),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              blurRadius: 20,
              offset: Offset(0, 0),
            )
          ]),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(left: 6, right: 10, top: 4, bottom: 4),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 15,
                  )
                ]),
            child: Image.asset(
              shoeImage,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            shoeType,
            style: TextStyle(color: primaryColor, fontFamily: "Poppins"),
          ),
          SizedBox(
            width: 8,
          )
        ],
      ),
    );
  }
}
