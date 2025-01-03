import 'package:coding_on_the_spot/modules/button_navbar.dart';
import 'package:flutter/material.dart';

class PromosPage extends StatelessWidget {
  const PromosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text("Promo Page")),
        bottomNavigationBar: BottomNavbar(currentIndex: 1));
  }
}
