import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';

class AtmCardWidget extends StatelessWidget {
  const AtmCardWidget({
    Key? key,
    required this.cardImage,
    this.cardDiscription = 'Cartao',
  }) : super(key: key);
  // final int cardNum;
  final String cardImage;
  final String cardDiscription;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset('assets/images/$cardImage', height: 190),
          const SizedBox(
            height: kDefaultPadding / 1.5,
          ),
          Text(
            cardDiscription,
            style: kDefaultTextStyle.copyWith(
              fontSize: 18,
              color: kTextColor.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
