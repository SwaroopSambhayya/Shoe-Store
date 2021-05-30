import 'package:flutter/material.dart';

class CircleProfile extends StatelessWidget {
  final double margin;
  final String imageUrl;
  CircleProfile({this.margin = 15, this.imageUrl = ""});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.redAccent.withOpacity(0.6),
        borderRadius: BorderRadius.all(Radius.circular(50)),
        boxShadow: [
          BoxShadow(
              color: Colors.deepOrange.withOpacity(0.15),
              offset: Offset(2, 8),
              blurRadius: 25)
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: imageUrl.isNotEmpty
              ? Image.asset(
                  'assets/images/' + imageUrl + '.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                )
              : SizedBox(),
        ),
      ),
    );
  }
}
