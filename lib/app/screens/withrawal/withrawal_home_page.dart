import 'package:flutter/material.dart';

import 'package:mx_challenge/app/constants.dart';
import 'package:mx_challenge/app/screens/gen_widgets/operation_button_widget.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_divider.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_title.dart';
import 'package:mx_challenge/app/screens/gen_widgets/atm_card_widget.dart';

class WithrawalHomePage extends StatelessWidget {
  const WithrawalHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      body: const Column(
        children: [
          PageTitle(title: 'Levantamentos sem Cartao'),
          AtmCardWidget(
            cardImage: 'bfa-custom-card-img.png',
            cardDiscription: 'ContaSalario',
          ),
          PageDivider(),
          Wrap(
            children: [
              OpertationButtonWidget(
                  title: 'Consultas', namedRoute: '', icon: 'consulta.svg'),
              OpertationButtonWidget(
                  title: 'Levantamento sem Cartao',
                  namedRoute: '',
                  icon: 'levantamento-sem-cartao.svg'),
            ],
          ),
        ],
      ),
    );
  }

  // AppBar bar() {
  //   return AppBar(
  //     centerTitle: true,
  //     toolbarHeight: 40,
  //     actionsIconTheme: const IconThemeData(color: Colors.white),
  //     title: Text(
  //       'express',
  //       textAlign: TextAlign.center,
  //       maxLines: 1,
  //       style: kDefaultTextStyle.copyWith(
  //         fontSize: 40,
  //         color: Colors.white,
  //         fontFamily: kLogoFontFamily,
  //       ),
  //     ),
  //   );
  // }
}
