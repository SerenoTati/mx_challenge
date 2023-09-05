import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mx_challenge/app/screens/route_manager/route_manager.dart';
import 'package:mx_challenge/app/screens/route_manager/route_manager_interface.dart';

class OpertationButtonWidget extends StatelessWidget {
  const OpertationButtonWidget({
    Key? key,
    required this.title,
    required this.namedRoute,
    required this.icon,
  }) : super(key: key);
  final String title;
  final String namedRoute;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final RouteManagerInterface routeManager = RouteManager(context);
    return GestureDetector(
      onTap: () => routeManager.goTo(namedRoute),
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding / 4),
        margin: const EdgeInsets.all(kDefaultPadding / 2.3),
        height: 76,
        width: 80,
        decoration: BoxDecoration(
          border: Border.all(
            color: kTextColor,
            width: 0.7,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              'assets/icons/$icon',
              height: 25,
            ),
            Text(
              title.toUpperCase(),
              style: kDefaultTextStyle.copyWith(fontSize: 10),
              maxLines: 2,
            )
          ],
        ),
      ),
    );
  }
}
