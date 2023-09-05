import 'package:flutter/material.dart';

import 'package:mx_challenge/app/constants.dart';
import 'package:mx_challenge/app/screens/gen_widgets/atm_card_widget.dart';
import 'package:mx_challenge/app/screens/gen_widgets/confirm_button_widget.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_divider.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_title.dart';
import 'package:mx_challenge/app/screens/gen_widgets/text_input_widget.dart';

class StatePaymentPage extends StatelessWidget {
  const StatePaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            PageTitle(title: 'Pagamentos ao Estado'),
            AtmCardWidget(
              cardImage: 'bfa-custom-card-img.png',
              cardDiscription: 'ContaSalario',
            ),
            PageDivider(),
            TextInputWidget(
              inputTitle: 'Referencia',
            ),
            TextInputWidget(
              isMoney: true,
              inputTitle: 'Valor',
            ),
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ConfirmButtonWidget(
                  buttonTitle: 'Enviar',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
