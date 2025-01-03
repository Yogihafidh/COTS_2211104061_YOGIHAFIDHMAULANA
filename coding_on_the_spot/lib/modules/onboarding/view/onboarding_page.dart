import 'package:coding_on_the_spot/modules/onboarding/controller/onboarding_controller.dart';
import 'package:coding_on_the_spot/modules/onboarding/view/onboarding1.dart';
import 'package:coding_on_the_spot/modules/onboarding/view/onboarding2.dart';
import 'package:coding_on_the_spot/modules/onboarding/view/onboarding3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          return PageView(
            controller:
                PageController(initialPage: controller.currentPage.value),
            onPageChanged: controller.onPageChanged,
            children: [
              GojekWelcomePage(), // Halaman 1
              GojekWelcomePage2(), // Halaman 2
              GojekWelcomePage3(), // Halaman 3
            ],
          );
        }),
      ),
    );
  }
}
