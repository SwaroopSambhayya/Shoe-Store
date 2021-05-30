import 'package:flutter/material.dart';
import 'package:shoe_market/constants.dart';
import 'package:shoe_market/screens/components/myIcon.dart';

class MyAppBar extends StatelessWidget {
  final IconData icon;
  final bool leading;
  final String title;
  final Function onMenuTap;
  MyAppBar({this.icon, this.leading = false, this.title, this.onMenuTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          IconButton(
            icon: leading == false
                ? Icon(
                    icon,
                    size: 8,
                  )
                : Icon(
                    icon,
                    size: 34,
                  ),
            onPressed: leading == false
                ? onMenuTap
                : () {
                    Navigator.pop(context);
                  },
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: leading == true ? 22 : 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),
            ),
          ),
          IconButton(
            icon: Stack(
              children: [
                Icon(
                  MyIcon.bag_1,
                ),
                Positioned(
                  top: 0,
                  right: -0.3,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 7,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: Text(
                        "3",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
