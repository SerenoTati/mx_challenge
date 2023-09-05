import 'package:flutter/material.dart';

import 'package:mx_challenge/app/constants.dart';
import 'package:mx_challenge/app/screens/gen_widgets/atm_card_widget.dart';
import 'package:mx_challenge/app/screens/gen_widgets/custom_select_widget.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_divider.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_title.dart';

class OtherPaymentPage extends StatelessWidget {
  const OtherPaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> sectors = [
      'selecione sector',
      'Telecomunicacoes',
    ];
    List<String> entities = [
      'selecione entidade',
      'Movicel',
    ];
    return Scaffold(
      appBar: kAppBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PageTitle(title: 'Pagamentos'),
            const AtmCardWidget(
              cardImage: 'bfa-custom-card-img.png',
              cardDiscription: 'ContaSalario',
            ),
            const PageDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: [
                  CustomSelectWidget(
                    sectors: sectors,
                    selectorTitle: 'Sector',
                  ),
                  CustomSelectWidget(
                    isEnabled: false,
                    sectors: entities,
                    selectorTitle: 'Entidade',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
