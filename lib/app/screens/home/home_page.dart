import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';
import 'package:mx_challenge/app/screens/gen_widgets/page_title.dart';

import '../gen_widgets/app_drawer.dart';
import '../gen_widgets/atm_card_widget.dart';
import 'components/home_operation_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  // List
  @override
  Widget build(BuildContext context) {
    List<Widget> cards = const [
      AtmCardWidget(
        cardImage: 'bfa-custom-card-img.png',
        cardDiscription: 'ContaSalario',
      ),
      AtmCardWidget(
        cardImage: 'multicaixa-bai.jpg',
        cardDiscription: 'ContaBiolos',
      ),
      AtmCardWidget(
        cardImage: 'multicaixa-tota.jpg',
        cardDiscription: 'ContaPoupanca',
      ),
    ];

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: kAppBar,
      body: DefaultTabController(
        length: cards.length,
        child: Builder(
          builder: (BuildContext ctct) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const PageTitle(title: 'Cartoes'),
                Expanded(
                  child: TabBarView(
                    children: cards,
                  ),
                ),
                TabPageSelector(
                  color: kTextColor.withOpacity(0.2),
                  selectedColor: kPrimaryColor,
                  indicatorSize: 7.5,
                ),
                const SizedBox(
                  height: 50,
                ),
                const HomeOperationsWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
