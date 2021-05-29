import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoe_market/constants.dart';
import 'package:shoe_market/screens/components/horizontalCard.dart';
import 'package:shoe_market/screens/components/myAppBar.dart';

class ShoeDetails extends StatefulWidget {
  final shoeData;
  ShoeDetails({this.shoeData});

  @override
  _ShoeDetailsState createState() => _ShoeDetailsState();
}

class _ShoeDetailsState extends State<ShoeDetails> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: overlayValue,
      child: Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      MyAppBar(
                        icon: Icons.chevron_left_rounded,
                        title: widget.shoeData["shoeName"],
                        leading: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      HorizontalCard(
                        shoeDetails: widget.shoeData,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Description",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
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
                                  "(" + widget.shoeData["shoePoints"] + ")",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          widget.shoeData["shoeDescription"],
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        padding: EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                          icon:
                                              Icon(EvaIcons.minusCircleOutline),
                                          onPressed: () {}),
                                      Text(
                                        "02",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      IconButton(
                                        icon: Icon(EvaIcons.plusCircleOutline),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Total:",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w600),
                                        ),
                                        TextSpan(
                                          text: "  ₹" + "3760",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                minimumSize: Size(
                                  MediaQuery.of(context).size.width * 0.90,
                                  55,
                                ),
                              ),
                              child: Text(
                                "Add to cart",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Poppins",
                                    color: primaryColor),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
