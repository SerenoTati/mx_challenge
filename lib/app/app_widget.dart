import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';
import 'package:mx_challenge/app/screens/home/home_page.dart';

import 'package:mx_challenge/app/screens/login/login_page.dart';
import 'package:mx_challenge/app/screens/payment/favorite_payment_page/favorite_payment_page.dart';
import 'package:mx_challenge/app/screens/payment/payment_home_page.dart';
import 'package:mx_challenge/app/screens/payment/recharge_payment/recharge_home_page.dart';
import 'package:mx_challenge/app/screens/payment/reference_payment/reference_payment.dart';
import 'package:mx_challenge/app/screens/query/query_home_page.dart';
import 'package:mx_challenge/app/screens/transfers/transfer_home_page.dart';
import 'package:mx_challenge/app/screens/withrawal/withrawal_home_page.dart';

import 'screens/payment/other_payment_page/other_payment_page.dart';
import 'screens/payment/state_payment/state_payment_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MulticaixaExpresss',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          foregroundColor: Colors.black45,
        ),
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: {
        // 'LoginPage': (context) => const LoginPage(),
        'HomePage': (context) => const HomePage(),
        'Payment': (context) => const PaymentPage(),
        'Query': (context) => const QueryHomePage(),
        'Transfers': (context) => const TransferHomePage(),
        'Withrawal': (context) => const WithrawalHomePage(),
        'RefrencePayment': (context) => const ReferencePaymentPage(),
        'StatePayment': (context) => const StatePaymentPage(),
        'OtherPayment': (context) => const OtherPaymentPage(),
        'RechargePayment': (context) => const RechargeHomePage(),
        'FavoritePayment': (context) => const FavoritePaymentPage(),
      },
    );
  }
}
