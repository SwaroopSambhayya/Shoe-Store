import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:shoe_market/screens/components/circleAvatar.dart';

import 'myIcon.dart';

class MyDrawer extends StatefulWidget {
  final Widget scaffold;
  final GlobalKey<InnerDrawerState> innerDrawerKey;
  MyDrawer({this.scaffold, this.innerDrawerKey});

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return InnerDrawer(
      key: widget.innerDrawerKey,
      scaffold: widget.scaffold,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          blurRadius: 20,
          offset: Offset(-5, 10),
        ),
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          blurRadius: 20,
          offset: Offset(10, 0),
        )
      ],
      onTapClose: true, // default false
      swipe: false, // default true
      colorTransitionChild: Colors.white, // default Color.black54
      colorTransitionScaffold: Colors.transparent, // default Color.black54

      //When setting the vertical offset, be sure to use only top or bottom
      offset: IDOffset.only(bottom: 0.05, right: 0.0, left: 0.0),

      scale: IDOffset.horizontal(0.8), // set the offset in both directions

      proportionalChildArea: true, // default true
      borderRadius: 40, // default 0
      leftAnimationType: InnerDrawerAnimation.static, // default static
      rightAnimationType: InnerDrawerAnimation.quadratic,
      backgroundDecoration: BoxDecoration(
          color: Colors.white), // default  Theme.of(context).backgroundColor

      //when a pointer that is in contact with the screen and moves to the right or left
      onDragUpdate: (double val, InnerDrawerDirection direction) {
        // return values between 1 and 0
        print(val);
        // check if the swipe is to the right or to the left
        print(direction == InnerDrawerDirection.start);
      },

      innerDrawerCallback: (a) =>
          print(a), // return  true (open) or false (close)
      leftChild: Material(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 20)
                        ]),
                    child: IconButton(
                      iconSize: 20,
                      icon: Icon(
                        Icons.close,
                        size: 20,
                      ),
                      onPressed: () {
                        widget.innerDrawerKey.currentState.toggle();
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CircleProfile(
                  imageUrl: "profile",
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Kelly",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        MyIcon.home_1,
                        color: Colors.black.withOpacity(0.75),
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.deepOrangeAccent,
                            fontSize: 14),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        MyIcon.notification,
                        color: Colors.black.withOpacity(0.75),
                      ),
                      title: Text(
                        "Notifications",
                        style: TextStyle(fontFamily: "Poppins", fontSize: 14),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        MyIcon.heart_6,
                        color: Colors.black.withOpacity(0.75),
                      ),
                      title: Text(
                        "Favorites",
                        style: TextStyle(fontFamily: "Poppins", fontSize: 14),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        EvaIcons.logOut,
                        color: Colors.black.withOpacity(0.75),
                      ),
                      title: Text(
                        "Sign out",
                        style: TextStyle(fontFamily: "Poppins", fontSize: 14),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
