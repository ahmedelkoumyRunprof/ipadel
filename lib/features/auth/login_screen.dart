import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_colors.dart';
import 'package:flutter_app/features/auth/register_screen.dart';
import 'package:flutter_app/features/home/home_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/logo.png", height: 269),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/login_text.png", height: 32),
            ),
            const SizedBox(height: 40),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 78,
                      margin: const EdgeInsets.only(right: 100),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(100)),
                        color: Colors.white,
                        border: Border.all(
                          color: AppColors.secondColor, // Border color
                          width: 2, // Border width
                        ),
                      ),
                      child: TextFormField(
                        cursorColor: AppColors.primaryColor,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "User Name",
                          hintStyle: TextStyle(
                            color: AppColors.secondColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          prefixIcon: Icon(Icons.person,
                              size: 35, color: AppColors.secondColor),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 78,
                      margin: const EdgeInsets.only(right: 100),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(100)),
                        color: Colors.white,
                        border: Border.all(
                          color: AppColors.secondColor, // Border color
                          width: 2, // Border width
                        ),
                      ),
                      child: TextFormField(
                        cursorColor: AppColors.primaryColor,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: AppColors.secondColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          prefixIcon: Icon(Icons.lock,
                              size: 35, color: AppColors.secondColor),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 70,
                  child: GestureDetector(
                    onTap: (){
                      Get.off(()=>HomeScreen());
                    },
                    child: CircleAvatar(
                      backgroundColor: AppColors.secondColor,
                      radius: 40,
                      child: Image.asset("assets/images/arrow.png", height: 78),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Image.asset("assets/images/forget_password.png",
                      width: 150),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Get.off(() => RegisterScreen());
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.60),
                height: 52,
                decoration: const BoxDecoration(
                  color: AppColors.thirdColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
