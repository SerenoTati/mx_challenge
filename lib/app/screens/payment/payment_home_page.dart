import 'package:flutter/material.dart';

import 'package:mx_challenge/app/constants.dart';
import 'package:mx_challenge/app/screens/gen_widgets/operation_button_widget.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_divider.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_title.dart';
import 'package:mx_challenge/app/screens/gen_widgets/atm_card_widget.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      body: const Column(
        children: [
          PageTitle(title: 'Pagamentos'),
          AtmCardWidget(
            cardImage: 'bfa-custom-card-img.png',
            cardDiscription: 'ContaSalario',
          ),
          PageDivider(),
          Wrap(
            children: [
              OpertationButtonWidget(
                  title: 'Pagamentos por Referencia',
                  namedRoute: 'RefrencePayment',
                  icon: 'inicio.svg'),
              OpertationButtonWidget(
                  title: 'Pagamentos ao Estado',
                  namedRoute: 'StatePayment',
                  icon: 'inicio.svg'),
              OpertationButtonWidget(
                  title: 'Outros Pagamentos',
                  namedRoute: 'OtherPayment',
                  icon: 'inicio.svg'),
              OpertationButtonWidget(
                  title: 'Carregamentos',
                  namedRoute: 'RechargePayment',
                  icon: 'inicio.svg'),
              OpertationButtonWidget(
                  title: 'Favoritos',
                  namedRoute: 'FavoritePayment',
                  icon: 'inicio.svg'),
            ],
          ),
        ],
      ),
    );
  }
}
