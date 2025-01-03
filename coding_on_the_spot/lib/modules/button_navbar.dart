import 'package:coding_on_the_spot/design_system/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavbar extends StatelessWidget {
  final int currentIndex;

  const BottomNavbar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 10,
            offset: Offset(0, -6),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Ikon Home
          IconButton(
            icon: Icon(
              Icons.home,
              color: currentIndex == 0 ? AppColors.green : AppColors.grey,
            ),
            onPressed: () {
              if (currentIndex != 0) {
                Get.offNamed('/home');
              }
            },
          ),
          // Ikon History
          IconButton(
            icon: Icon(
              Icons.discount_rounded,
              weight: 600,
              color: currentIndex == 1 ? AppColors.green : AppColors.grey,
            ),
            onPressed: () {
              if (currentIndex != 1) {
                Get.offNamed('/promos');
              }
            },
          ),
          // Tombol Input
          IconButton(
            icon: Icon(
              Icons.edit_document,
              weight: 600,
              color: currentIndex == 3 ? AppColors.green : AppColors.grey,
            ),
            onPressed: () {
              if (currentIndex != 3) {
                Get.offNamed('/order');
              }
            },
          ),
          // Ikon Settings
          IconButton(
            icon: Icon(
              Icons.chat,
              weight: 600,
              color: currentIndex == 4 ? AppColors.green : AppColors.grey,
            ),
            onPressed: () {
              if (currentIndex != 4) {
                Get.offNamed('/chat');
              }
            },
          ),
        ],
      ),
    );
  }
}
