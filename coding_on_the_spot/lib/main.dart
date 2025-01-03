import 'package:coding_on_the_spot/modules/board_page/view/chatpage.dart';
import 'package:coding_on_the_spot/modules/board_page/view/homepage.dart';
import 'package:coding_on_the_spot/modules/board_page/view/orderpage.dart';
import 'package:coding_on_the_spot/modules/board_page/view/promopage.dart';
import 'package:coding_on_the_spot/modules/login/login.dart';
import 'package:coding_on_the_spot/modules/onboarding/view/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/onboarding',
      getPages: [
        GetPage(
          name: '/login',
          page: () => const Login(),
        ),
        GetPage(
          name: '/onboarding',
          page: () => OnboardingPage(),
        ),
        GetPage(
          name: '/homepage',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/promos',
          page: () => PromosPage(),
        ),
        GetPage(
          name: '/order',
          page: () => OrderPage(),
        ),
        GetPage(
          name: '/chat',
          page: () => ChatPage(),
        ),
      ],
      unknownRoute: GetPage(
        name: '/notfound',
        page: () => Scaffold(
          appBar: AppBar(title: const Text('Page Not Found')),
          body: const Center(child: Text('404 - Page Not Found')),
        ),
      ),
    );
  }
}
