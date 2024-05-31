import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_colors.dart';
import 'package:flutter_app/features/home/controllers/home_controller.dart';
import 'package:flutter_app/features/upload_reels/upload_reels_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.primaryColor,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Obx(
              () => controller.screens[controller.currentScreen.value],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/bottom_navigation.png"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.currentScreen.value = 0;
                      },
                      icon: const Icon(Icons.add, color: Colors.transparent),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(() => UploadReelsScreen());
                      },
                      icon: const Icon(Icons.add, color: Colors.transparent),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.currentScreen.value = 1;
                      },
                      icon: const Icon(Icons.add, color: Colors.transparent),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
