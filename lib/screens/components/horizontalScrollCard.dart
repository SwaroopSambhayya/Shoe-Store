import 'package:flutter/material.dart';
import 'package:shoe_market/constants.dart';

class HorizontalScrollCards extends StatelessWidget {
  final shoeDetails;
  HorizontalScrollCards({this.shoeDetails});
  @override
  Widget build(BuildContext context) {
    Color checkColor(String color) {
      if (color == "red") {
        return Colors.red[100];
      }
      if (color == "blue") {
        return Colors.blue[100];
      }
      if (color == "orange") {
        return Colors.orange[100];
      }
      if (color == "green") {
        return Colors.green[100];
      }
      return Colors.white;
    }

    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: 255,
        height: 330,
        margin: EdgeInsets.only(left: 20, top: 10, right: 7),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: 10,
              child: Container(
                height: 260,
                width: 245,
                padding: EdgeInsets.only(bottom: 15, left: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.07),
                        blurRadius: 20,
                        offset: Offset(0, 6),
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  shoeDetails["shoeName"],
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "(" + shoeDetails["shoePoints"] + ")",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    shoeDetails["shoeCompany"],
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "₹" + shoeDetails["shoePrice"],
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Poppins"),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 8.0,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 17,
                                  child: IconButton(
                                    color: primaryColor,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      size: 17,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 25,
              right: 25,
              child: Container(
                width: 200,
                height: 220,
                decoration: BoxDecoration(
                  color: checkColor(shoeDetails["color"]),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Hero(
                        tag: shoeDetails["shoeLink"],
                        child: Image.asset(
                          shoeDetails["shoeLink"],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 2,
                      top: 2,
                      child: IconButton(
                        icon: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.3),
                                blurRadius: 20,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 15,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red.shade100,
                              size: 19,
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
