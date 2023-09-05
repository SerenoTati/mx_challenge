import 'package:flutter/material.dart';

const kPrimaryColor = Colors.orange;
const kTextColor = Color.fromARGB(255, 121, 117, 102);
const kBackgrounColor = Color.fromARGB(255, 250, 250, 250);
const kDarkColor = Colors.black;
const kDefaultTextStyle = TextStyle(fontSize: 15, color: kTextColor);
const kDefaultPadding = 20.0;
const kLogoFontFamily = 'Baumans';
const kImageLogoWhite = 'assets/images/express-logo-white.png';
const kImageLogoRed = "assets/images/express-logo.png";
const kBfaCardImage = 'assets/images/bfa-custom-card-img.png';
TextStyle kCardTextStyle =
    const TextStyle(fontSize: 12, color: Color.fromARGB(169, 187, 187, 187));
final AppBar kAppBar = AppBar(
  centerTitle: true,
  toolbarHeight: 40,
  title: Image.asset(kImageLogoWhite),
);
