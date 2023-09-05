import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';


class FavoriteCardWidget extends StatelessWidget {
  const FavoriteCardWidget({
    Key? key,
    required this.size,
    required this.title,
    required this.target,
    required this.cost,
    required this.operationType,
  }) : super(key: key);

  final Size size;
  final String title;
  final String target;
  final String cost;
  final String operationType;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      padding: const EdgeInsets.all(kDefaultPadding / 3),
      width: size.width, //MediaQuery.of(context.size.width),
      height: 80,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: kTextColor.withOpacity(0.1),
              blurRadius: 2,
              offset: const Offset(0, 0),
              spreadRadius: 1)
        ],
        color: Colors.white,
   
      ),
      child: RichText(
        textHeightBehavior:
            const TextHeightBehavior(applyHeightToFirstAscent: true),
        maxLines: 4,
        text: TextSpan(
          children: [
            TextSpan(
              text: '$title\n',
              style: const TextStyle(
                color: kPrimaryColor,
              ),
            ),
            TextSpan(
              text: '$target\n',
              style: kCardTextStyle,
            ),
            TextSpan(
              text: '$operationType\n',
              style: kCardTextStyle,
            ),
            TextSpan(text: cost, style: kCardTextStyle),
          ],
        ),
      ),
    );
  }
}