import 'package:flutter/material.dart';

class MostPopularListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              blurRadius: 20,
              offset: Offset(0, 3),
            )
          ]),
      child: ListTile(
        //isThreeLine: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 12),
        leading: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(
            "assets/images/shoe.png",
            fit: BoxFit.contain,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Air Jordan 1 Mid",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins"),
            ),
            Text(
              "NIKE",
              style: TextStyle(
                  fontSize: 12, fontFamily: "Poppins", color: Colors.grey),
            ),
          ],
        ),
        subtitle: Row(
          children: [
            Text(
              "₹80.00",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins"),
            ),
            SizedBox(
              width: 2,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                  size: 20,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "(5.0)",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                )
              ],
            ),
          ],
        ),
        trailing: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 20,
          child: IconButton(
            color: Colors.yellow,
            onPressed: () {},
            icon: Icon(
              Icons.add,
              size: 22,
            ),
          ),
        ),
      ),
    );
  }
}
