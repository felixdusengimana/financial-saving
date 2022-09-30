import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './wallet_screen.dart';

class MyHomePage extends StatelessWidget {
  static const String routeName = '/';
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 336,
              height: 340,
              child: SvgPicture.asset(
                'assets/svg/save_money.svg',
                semanticsLabel: 'Brutalist Logo',
                width: 24,
                height: 24,
              ),
            ),
            Container(
              width: 336,
              margin: const EdgeInsets.only(top: 50, bottom: 32),
              child: const Text(
                'All your savings accounts easily managed',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            SizedBox(
              width: 335,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(WalletScreen.routeName);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                child: const Text("Get Started"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
