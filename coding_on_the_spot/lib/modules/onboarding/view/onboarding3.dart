import 'package:coding_on_the_spot/design_system/style.dart';
import 'package:coding_on_the_spot/modules/onboarding/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GojekWelcomePage3 extends StatelessWidget {
  const GojekWelcomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.find();
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/gojek_logo.png',
                        height: 30,
                      ),
                      Text(
                        'IND',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 160),
                  Image.asset(
                    'assets/onboarding_makan_belanja.png',
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Pesan makan & belanja',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.heading1,
                  ),
                  SizedBox(height: 10),
                  Text('Lagi ngidam sesuatu? Gojek beliin gak pakai lama.',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.bodyRegular),
                  SizedBox(height: 20),
                  Obx(() {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: index == controller.currentPage.value
                                ? AppColors.primary1
                                : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    );
                  }),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary1,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed("/login");
                    },
                    child: Text(
                      'Masuk',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Belum ada akun?, Daftar dulu',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.primary1,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
