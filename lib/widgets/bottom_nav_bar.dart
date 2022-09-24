import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/icons/fancy_star.png')),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wallet_giftcard),
          label: 'Wallet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Account',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.of(context).pushReplacementNamed('/');
            break;
          case 1:
            Navigator.of(context).pushReplacementNamed('/wallet');
            break;
          case 2:
            Navigator.of(context).pushReplacementNamed('/account');
            break;
        }
      },
    );
  }
}
