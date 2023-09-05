import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        height: 80,
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          // border: Border.symmetric()
        ),
        child: Image.asset(kImageLogoRed)
        //  Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: const [
        //     Icon(
        //       Icons.ac_unit_outlined,
        //       color: Colors.white,
        //       size: 40,
        //     ),
        //     Text(
        //       'express',
        //       style: TextStyle(
        //         color: Colors.red,
        //         fontSize: 45,
        //         fontFamily: kLogoFontFamily,
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
