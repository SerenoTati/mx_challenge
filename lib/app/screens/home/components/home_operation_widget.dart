import 'package:flutter/material.dart';
import 'package:mx_challenge/app/screens/gen_widgets/operation_button_widget.dart';

class HomeOperationsWidget extends StatelessWidget {
  const HomeOperationsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        OpertationButtonWidget(
          namedRoute: 'Payment',
          icon: 'inicio.svg',
          title: 'Pagamento',
        ),
        OpertationButtonWidget(
          namedRoute: 'Transfers',
          icon: 'transferencia.svg',
          title: 'Transferencias',
        ),
        OpertationButtonWidget(
          namedRoute: 'Withrawal',
          icon: 'levantamento-sem-cartao.svg',
          title: 'Levantamento sem cartao',
        ),
        OpertationButtonWidget(
          namedRoute: 'Query',
          icon: 'consulta.svg',
          title: 'Consultas',
        ),
        OpertationButtonWidget(
          namedRoute: 'Shopping',
          icon: 'inicio.svg',
          title: 'Compras em curso',
        ),
      ],
    );
  }
}
