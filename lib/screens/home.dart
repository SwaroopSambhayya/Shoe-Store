import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';

import 'package:shoe_market/constants.dart';
import 'package:shoe_market/screens/components/horizontal_scroll_card.dart';
import 'package:shoe_market/screens/components/inner_drawer.dart';
import 'package:shoe_market/screens/components/most_popular.dart';

import 'package:shoe_market/screens/components/my_icon.dart';
import 'package:shoe_market/screens/components/rounded_image.dart';
import 'package:shoe_market/screens/components/shoe_buttons.dart';
import 'package:shoe_market/screens/shoe_details.dart';

import 'components/my_app_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedIndex = 0;

  final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();

  @override
  Widget build(BuildContext context) {
    return // required if rightChild is not set
        //
        MyDrawer(
            innerDrawerKey: _innerDrawerKey,
            scaffold: AnnotatedRegion(
              value: overlayValue,
              child: Scaffold(
                backgroundColor: const Color(0xffFAFAFA),
                extendBodyBehindAppBar: true,
                //bottomNavigationBar: MyBottomBar(),

                body: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        MyAppBar(
                          icon: MyIcon.menu,
                          title: 'Shoe Market',
                          onMenuTap: () {
                            _innerDrawerKey.currentState.toggle();
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 18, right: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  style: const TextStyle(fontFamily: 'Poppins'),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(15),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                    hintText: 'Search',
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Poppins',
                                    ),
                                    prefixIcon: const Icon(
                                      MyIcon.search_5,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(13),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.15),
                                        blurRadius: 20,
                                        offset: const Offset(0, 15),
                                      ),
                                    ]),
                                child: IconButton(
                                    icon: const Icon(
                                      MyIcon.filter,
                                      color: primaryColor,
                                    ),
                                    onPressed: () {}),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 70,
                          margin: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return index == selectedIndex
                                  ? Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: ShoeButton(
                                        shoeType: shoeTypes[index]['shoeType'],
                                        shoeImage: shoeTypes[index]
                                            ['imageLink'],
                                      ),
                                    )
                                  : InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedIndex = index;
                                        });
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: RoundedImage(
                                          shoeImage: shoeTypes[index]
                                              ['imageLink'],
                                        ),
                                      ),
                                    );
                            },
                            itemCount: shoeTypes.length,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 370,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    PageRouteBuilder<void>(
                                        pageBuilder: (BuildContext context,
                                            Animation<double> animation,
                                            Animation<double>
                                                secondaryAnimation) {
                                          return AnimatedBuilder(
                                            animation: animation,
                                            builder: (BuildContext context,
                                                Widget child) {
                                              return ShoeDetails(
                                                  shoeData:
                                                      shoeCardData[index]);
                                            },
                                          );
                                        },
                                        transitionDuration:
                                            const Duration(milliseconds: 600)),
                                  );
                                },
                                child: HorizontalScrollCards(
                                  shoeDetails: shoeCardData[index],
                                ),
                              );
                            },
                            itemCount: shoeCardData.length,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Most Popular',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins'),
                              ),
                              Text(
                                'View All',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    decoration: TextDecoration.underline),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MostPopularListTile(),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
