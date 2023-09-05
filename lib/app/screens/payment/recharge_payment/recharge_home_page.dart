import 'package:flutter/material.dart';

import 'package:mx_challenge/app/constants.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_divider.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_title.dart';
import 'package:mx_challenge/app/screens/gen_widgets/atm_card_widget.dart';
import 'package:mx_challenge/app/screens/payment/components/recharge_operation_widget.dart';

class RechargeHomePage extends StatelessWidget {
  const RechargeHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            PageTitle(title: 'Carregamento'),
            AtmCardWidget(
              cardImage: 'bfa-custom-card-img.png',
              cardDiscription: 'ContaSalario',
            ),
            PageDivider(),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                RechargeOpertationWidget(
                  title: 'Unitel',
                  namedRoute: '',
                  image: 'assets/images/unitel-logo.png',
                ),
                RechargeOpertationWidget(
                  title: 'Movicel',
                  namedRoute: '',
                  image: 'assets/images/sample.png',
                ),
                RechargeOpertationWidget(
                  title: 'Zap',
                  namedRoute: '',
                  image: 'assets/images/zap-logo.png',
                ),
                RechargeOpertationWidget(
                  title: 'Movicel',
                  namedRoute: '',
                  image: 'assets/images/sample.png',
                ),
                RechargeOpertationWidget(
                  title: 'Movicel',
                  namedRoute: '',
                  image: 'assets/images/sample.png',
                ),
                RechargeOpertationWidget(
                  title: 'Net One',
                  namedRoute: '',
                  image: 'assets/images/net-one-logo.png',
                ),
                RechargeOpertationWidget(
                  title: 'Movicel',
                  namedRoute: '',
                  image: 'assets/images/angola-telecom-logo.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
