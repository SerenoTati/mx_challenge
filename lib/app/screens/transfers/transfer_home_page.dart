import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';

import 'package:mx_challenge/app/screens/gen_widgets/operation_button_widget.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_divider.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_title.dart';
import 'package:mx_challenge/app/screens/gen_widgets/atm_card_widget.dart';

class TransferHomePage extends StatelessWidget {
  const TransferHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      body: const Column(
        children: [
          PageTitle(title: 'Transferencias'),
          AtmCardWidget(
            cardImage: 'bfa-custom-card-img.png',
            cardDiscription: 'ContaSalario',
          ),
          PageDivider(),
          Wrap(
            children: [
              OpertationButtonWidget(
                  title: 'Transferencias IBAN',
                  namedRoute: '',
                  icon: 'inicio.svg'),
              OpertationButtonWidget(
                  title: 'Transferencias EXPRESS',
                  namedRoute: '',
                  icon: 'inicio.svg'),
              OpertationButtonWidget(
                  title: 'Favoritos', namedRoute: '', icon: 'inicio.svg'),
            ],
          ),
        ],
      ),
    );
  }
}
