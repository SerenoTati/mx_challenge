import 'package:flutter/material.dart';

import 'components/login_header_widget.dart';
import 'components/pin_button_widget.dart';
import 'components/pin_check_widget.dart';

// import 'package:mx_challenge/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<int> keyNum = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0];
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: LoginHeaderWidget(size: size),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PinCheckCircleWidget(),
                    PinCheckCircleWidget(),
                    PinCheckCircleWidget(),
                    PinCheckCircleWidget(),
                    PinCheckCircleWidget(),
                    PinCheckCircleWidget(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: Text(
                    'PIN do serviço MULTICAIXA',
                    style: TextStyle(color: Colors.black38, fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            width: 175,
            child: Wrap(
              spacing: 14,
              runSpacing: 4.0,
              // mainAxisAlignment: MainAxisAlignment.center,
              children:
                  keyNum.map((value) => PinButtonWidget(value: value)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
