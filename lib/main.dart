import 'package:brutalist/screens/account_screen.dart';
import 'package:brutalist/screens/wallet_screen.dart';
import "package:flutter/material.dart";

import './screens/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blutalist UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(237, 118, 74, 1),
          secondary: Colors.black,
          tertiary: const Color(0xFFA1A1A1),
          background: const Color(0xFFFBFAF8),
        ),
        fontFamily: 'Manrope',
      ),
      home: const MyHomePage(),
      routes: {
        WalletScreen.routeName: (context) => const WalletScreen(),
        AccountScreen.routeName: (context) => const AccountScreen(),
      },
    );
  }
}
