import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
          top: kDefaultPadding / 2, bottom: kDefaultPadding / 2),
      child: Text(
        title.toUpperCase(),
        style: kDefaultTextStyle.copyWith(
            fontSize: 20, color: kPrimaryColor, fontWeight: FontWeight.w700),
      ),
    );
  }
}
