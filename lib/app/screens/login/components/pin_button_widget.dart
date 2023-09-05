import 'package:flutter/material.dart';
import 'package:mx_challenge/app/screens/route_manager/route_manager.dart';
import 'package:mx_challenge/app/screens/route_manager/route_manager_interface.dart';

class PinButtonWidget extends StatelessWidget {
  const PinButtonWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    RouteManagerInterface routeManager = RouteManager(context);
    return GestureDetector(
      onTap: () {
        routeManager.goTo('HomePage');
      },
      child: Container(
          alignment: Alignment.center,
          height: 40,
          width: 40,
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Text(
            value != 10 ? '$value' : 'DEL',
            style: value != 10
                ? const TextStyle(
                    color: Color.fromARGB(255, 105, 104, 104),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )
                : const TextStyle(
                    color: Color.fromARGB(255, 105, 104, 104),
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
          )),
    );
  }
}
