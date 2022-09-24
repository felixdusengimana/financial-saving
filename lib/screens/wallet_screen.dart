import 'package:brutalist/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  static const String routeName = '/wallet';
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavbar(),
      body: Container(
        child: Center(child: Text("Heelo")),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
