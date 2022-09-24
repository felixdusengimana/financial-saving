import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  static const routeName = '/account';
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Center(
        child: Text("Account"),
      ),
    );
  }
}
