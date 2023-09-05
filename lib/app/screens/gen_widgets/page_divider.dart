import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';

class PageDivider extends StatelessWidget {
  const PageDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Divider(
        height: kDefaultPadding,
        // endIndent: kDefaultPadding,
        // indent: kDefaultPadding,
        color: kTextColor,
        thickness: 0.5,
      ),
    );
  }
}
