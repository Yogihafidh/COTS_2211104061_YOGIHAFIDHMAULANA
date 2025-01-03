import 'package:coding_on_the_spot/modules/button_navbar.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text("Chat Page")),
        bottomNavigationBar: BottomNavbar(currentIndex: 3));
  }
}
