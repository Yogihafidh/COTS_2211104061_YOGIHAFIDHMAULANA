import 'package:coding_on_the_spot/modules/button_navbar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text('Homepage'),
        ),
        bottomNavigationBar: BottomNavbar(currentIndex: 1));
  }
}
