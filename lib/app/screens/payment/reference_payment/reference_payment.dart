import 'package:flutter/material.dart';

import 'package:mx_challenge/app/constants.dart';
import 'package:mx_challenge/app/screens/gen_widgets/atm_card_widget.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_divider.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_title.dart';
import 'package:mx_challenge/app/screens/gen_widgets/text_input_widget.dart';

class ReferencePaymentPage extends StatelessWidget {
  const ReferencePaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      body: const Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PageTitle(title: 'Pagamentos por Referencia'),
          AtmCardWidget(
            cardImage: 'bfa-custom-card-img.png',
            cardDiscription: 'ContaSalario',
          ),
          PageDivider(),
          TextInputWidget(
            inputTitle: 'Entidade',
          ),
          TextInputWidget(
            inputTitle: 'Referencia',
          ),
          TextInputWidget(
            inputTitle: 'Valor',
          )
        ],
      ),
    );
  }
}
