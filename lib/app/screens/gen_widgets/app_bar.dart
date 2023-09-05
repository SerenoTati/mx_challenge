import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';

class AppAppBar extends AppBar {
   AppAppBar({
    Key? key,
  }) : super(key: key);
  
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      toolbarHeight: 40,
      actionsIconTheme: const IconThemeData(color: Colors.white),
      // foregroundColor: Colors.white,
      // elevation: 0,
      title: Text(
        'express',
        textAlign: TextAlign.center,
        maxLines: 1,
        style: kDefaultTextStyle.copyWith(
          fontSize: 40,
          color: Colors.white,
          fontFamily: kLogoFontFamily,
        ),
      ),
    );
  }
}
