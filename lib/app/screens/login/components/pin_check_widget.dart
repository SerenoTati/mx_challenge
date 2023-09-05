import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';

class PinCheckCircleWidget extends StatelessWidget {
  const PinCheckCircleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: kTextColor),
    );
  }
}
