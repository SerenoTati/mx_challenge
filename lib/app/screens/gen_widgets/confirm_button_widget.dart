import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';

class ConfirmButtonWidget extends StatelessWidget {
  const ConfirmButtonWidget({
    Key? key,
    required this.buttonTitle,
  }) : super(key: key);
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 190,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          buttonTitle,
          style: kDefaultTextStyle.copyWith(
            color: const Color.fromARGB(255, 134, 74, 25),
          ),
        ),
      ),
    );
  }
}
