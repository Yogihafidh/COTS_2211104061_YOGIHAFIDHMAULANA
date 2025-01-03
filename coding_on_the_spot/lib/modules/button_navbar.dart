import 'package:coding_on_the_spot/design_system/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavbar extends StatelessWidget {
  final int currentIndex;

  const BottomNavbar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 10,
            offset: const Offset(0, -6),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Ikon Home
          _buildNavItem(
            index: 0,
            icon: Icons.home_rounded,
            label: 'Home',
            routeName: '/homepage',
          ),
          // Ikon Promos
          _buildNavItem(
            index: 1,
            icon: Icons.discount_rounded,
            label: 'Promos',
            routeName: '/promos',
          ),
          // Ikon Order
          _buildNavItem(
            index: 2,
            icon: Icons.edit_document,
            label: 'Order',
            routeName: '/order',
          ),
          // Ikon Chat
          _buildNavItem(
            index: 3,
            icon: Icons.chat_rounded,
            label: 'Chat',
            routeName: '/chat',
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required IconData icon,
    required String label,
    required String routeName,
  }) {
    bool isActive = currentIndex == index;
    return GestureDetector(
      onTap: () {
        if (!isActive) {
          Get.toNamed(routeName);
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isActive ? AppColors.green : AppColors.grey,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isActive ? AppColors.green : AppColors.grey,
              fontSize: 12,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
