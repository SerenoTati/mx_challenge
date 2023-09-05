import 'package:flutter/material.dart';
import 'package:mx_challenge/app/screens/route_manager/route_manager_interface.dart';

class RouteManager implements RouteManagerInterface {
  final BuildContext ctxt;

  RouteManager(this.ctxt);
  @override
  goTo(String namedRoute) {
    Navigator.pushNamed(ctxt, namedRoute);
  }

  @override
  void goBack() {
    Navigator.pop(ctxt);
  }
}
