import 'package:flutter/material.dart';

import 'package:mx_challenge/app/constants.dart';
import 'package:mx_challenge/app/screens/gen_widgets/favorite_card_widget.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_title.dart';
import 'package:mx_challenge/app/screens/gen_widgets/search_input_widget.dart';

class FavoritePaymentPage extends StatelessWidget {
  const FavoritePaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgrounColor,
      appBar: kAppBar,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            const PageTitle(title: 'Pagamentos Favoritos'),
            const SearchInputWidget(),
            Container(
              // margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Outros Pagamentos',
                style: kDefaultTextStyle,
                // textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: kDefaultPadding / 4,
            ),
            FavoriteCardWidget(
                size: size,
                title: 'UNITEL',
                target: '931925935',
                operationType: 'UNITEL REC. DIRECTAS (904) | SALDO VOZ',
                cost: '1000kz'),
            // SizedBox(
            //   height: kDefaultPadding / 2,
            // ),
            FavoriteCardWidget(
                size: size,
                title: 'UNITEL',
                target: '931925935',
                operationType: 'UNITEL REC. DIRECTAS (904) | SALDO VOZ',
                cost: '1000kz'),
            FavoriteCardWidget(
                size: size,
                title: 'UNITEL',
                target: '931925935',
                operationType: 'UNITEL REC. DIRECTAS (904) | SALDO VOZ',
                cost: '1000kz'),
            FavoriteCardWidget(
                size: size,
                title: 'UNITEL',
                target: '931925935',
                operationType: 'UNITEL REC. DIRECTAS (904) | SALDO VOZ',
                cost: '1000kz'),
            FavoriteCardWidget(
                size: size,
                title: 'UNITEL',
                target: '931925935',
                operationType: 'UNITEL REC. DIRECTAS (904) | SALDO VOZ',
                cost: '1000kz')
          ],
        ),
      ),
    );
  }
}
