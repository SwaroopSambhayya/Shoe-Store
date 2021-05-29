import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shoe_market/constants.dart';

class HorizontalCard extends StatelessWidget {
  final shoeDetails;
  HorizontalCard({this.shoeDetails});
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

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.55,
      margin: EdgeInsets.only(
        left: 13,
        top: 10,
        right: 13,
      ),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.46,
              width: MediaQuery.of(context).size.width * 0.85,
              padding: EdgeInsets.only(bottom: 20, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 25,
                    offset: Offset(0, 5),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      margin: EdgeInsets.only(top: 30),
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
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                padding: EdgeInsets.only(
                                    left: 25, right: 25, top: 15, bottom: 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 5),
                            onPressed: () {},
                            child: Text(
                              "₹" + shoeDetails["shoePrice"],
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: primaryColor,
                                  fontSize: 13),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.redAccent,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Colors.green[200],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Colors.orangeAccent,
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Size:",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontFamily: "Poppins",
                                    fontSize: 13,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 35,
            right: 35,
            child: Container(
              //width: 200,
              height: MediaQuery.of(context).size.height * 0.35,
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
    );
  }
}
