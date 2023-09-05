import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mx_challenge/app/constants.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: const [
            DrawerElementWidget(title: 'inicio', icon: 'inicio.svg'),
            DrawerElementWidget(title: 'Gestao de Cartoes', icon: 'inicio.svg'),
            DrawerElementWidget(title: 'Atividade', icon: 'inicio.svg'),
            DrawerElementWidget(title: 'Configuracoes', icon: 'settings.svg'),
            DrawerElementWidget(title: 'Apoio ao Cliente', icon: 'escudo.svg'),
            DrawerElementWidget(title: 'Sobre MCX Express', icon: 'escudo.svg'),
          ],
        ),
      ),
    );
  }
}

class DrawerElementWidget extends StatelessWidget {
  final String title;
  final String icon;
  const DrawerElementWidget({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset('assets/icons/$icon', ),
      title: Text(
        title,
        style: kDefaultTextStyle.copyWith(color: kPrimaryColor),
      ),
    );
  }
}
