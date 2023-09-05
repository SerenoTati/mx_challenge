import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mx_challenge/app/constants.dart';

class SearchInputWidget extends StatelessWidget {
  const SearchInputWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(2),
      // margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: kTextColor.withOpacity(0.15), style: BorderStyle.solid),
      ),
      // padding: EdgeInsets.all(5),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: TextField(
                cursorColor: kTextColor,
                decoration: InputDecoration(
                  hintText: 'Pesquisa...',
                  hintStyle: kDefaultTextStyle.copyWith(
                      fontSize: 12, color: kTextColor.withOpacity(0.5)),
                  border: InputBorder.none,
                  hintMaxLines: 1,
                  isCollapsed: true,
                ),
              ),
            ),
          ),
          Container(
            height: 28,
            width: 40,
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(color: kPrimaryColor),
            child: SvgPicture.asset(
              'assets/icons/consulta.svg',
            ),
          ),
        ],
      ),
    );
  }
}
