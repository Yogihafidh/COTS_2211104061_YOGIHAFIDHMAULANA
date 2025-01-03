import 'package:coding_on_the_spot/design_system/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.toNamed("/onboarding");
                            },
                            icon: Icon(Icons.arrow_back)),
                        Image.asset(
                          'assets/gojek_logo.png',
                          height: 30,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.help,
                      color: AppColors.black,
                    )
                  ],
                ),
                SizedBox(height: 32),
                Text(
                  'Login',
                  textAlign: TextAlign.start,
                  style: AppTextStyles.heading1,
                ),
                SizedBox(height: 10),
                Text(
                  "Enter your registered phone number to log in",
                  textAlign: TextAlign.start,
                  style: AppTextStyles.bodyRegular,
                ),
                SizedBox(height: 20),
                TextField(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    hintText: 'Phone number',
                    prefixIcon: Icon(Icons.phone, color: AppColors.grey),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grey),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.darkGreen),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Issue with Number?',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.darkGreen,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 160),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary1,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed("/homepage");
                  },
                  child: Text(
                    'Continue',
                    style: AppTextStyles.bodySemibold
                        .copyWith(color: AppColors.white),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
