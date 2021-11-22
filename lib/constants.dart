import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color primaryColor = Colors.yellow;
const Color secondaryColor = Color(0xff0f1327);
setSystemChrome() {
  SystemChrome.setEnabledSystemUIOverlays([
    SystemUiOverlay.top,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
  );
}

SystemUiOverlayStyle overlayValue = const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  systemNavigationBarColor: Colors.white,
  statusBarIconBrightness: Brightness.dark,
);

var shoeTypes = [
  {'shoeType': 'Shoes', 'imageLink': 'assets/images/shoe.png'},
  {'shoeType': 'Sneakers', 'imageLink': 'assets/images/sneaker.png'},
  {'shoeType': 'Slides', 'imageLink': 'assets/images/slides.png'},
  {'shoeType': 'Sandals', 'imageLink': 'assets/images/sandals.png'},
];

var shoeCardData = [
  {
    'shoeName': 'Revolt',
    'shoeCompany': 'NIKE',
    'shoePoints': '4',
    'shoeLink': 'assets/images/shoe.png',
    'shoePrice': '1880',
    'shoeDescription':
        'Your workhorse with wings returns.The Revolt continues to put a spring in your step, using the same responsive foam as its predecessor.',
    'color': 'red'
  },
  {
    'shoeName': 'Zion',
    'shoeCompany': 'NIKE',
    'shoePoints': '5',
    'shoeLink': 'assets/images/zion.png',
    'shoePrice': '5000',
    'shoeDescription':
        'The Zion 1 kicks off his signature line with a design inspired by his duality of humility and superhuman ability.',
    'color': 'blue'
  },
  {
    'shoeName': 'Air Max',
    'shoeCompany': 'Nike',
    'shoePoints': '4.5',
    'shoeLink': 'assets/images/airMax.png',
    'shoePrice': '2000',
    'color': 'green',
    'shoeDescription':
        "Taking the classic look of heritage Nike running into a new realm, the Nike Air Max Pre-Day brings you a fast-paced look ready for today's world.",
  },
  {
    'shoeName': 'Boost',
    'shoeCompany': 'ADIDAS',
    'shoePoints': '5',
    'shoeLink': 'assets/images/adidasBoost.png',
    'shoePrice': '6000',
    'color': 'orange',
    'shoeDescription':
        "You never take your eyes off the horizon. Neither does adidas. These ZX 2K Boost Shoes use high-tech materials to give you maximum comfort. A stripped-down look gives you that futuristic vibe. They've got laces, but you can also slip them on.",
  },
];
