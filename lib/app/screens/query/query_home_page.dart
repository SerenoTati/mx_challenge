import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';
import 'package:mx_challenge/app/screens/gen_widgets/operation_button_widget.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_divider.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_title.dart';
import 'package:mx_challenge/app/screens/gen_widgets/atm_card_widget.dart';

class QueryHomePage extends StatelessWidget {
  const QueryHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      body: const Column(
        children: [
          PageTitle(title: 'Consultas'),
          AtmCardWidget(
            cardImage: 'bfa-custom-card-img.png',
            cardDiscription: 'ContaSalario',
          ),
      PageDivider(),
          Wrap(
            children: [
              OpertationButtonWidget(
                  title: 'Saldos', namedRoute: '', icon: 'inicio.svg'),
              OpertationButtonWidget(
                  title: 'Movimentos', namedRoute: '', icon: 'inicio.svg'),
              OpertationButtonWidget(
                  title: 'IBAN', namedRoute: '', icon: 'inicio.svg'),
            ],
          ),
        ],
      ),
    );
  }
}
