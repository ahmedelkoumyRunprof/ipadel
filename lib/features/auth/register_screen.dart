import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_colors.dart';
import 'package:flutter_app/core/widgets/custom_text_field.dart';
import 'package:flutter_app/features/auth/login_screen.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            color: AppColors.thirdColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Sign up and check our latest updates",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.85,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      child: Column(
                        children: [
                          customTextField(
                              controller: TextEditingController(),
                              hintText: "First Name"),
                          customTextField(
                              controller: TextEditingController(),
                              hintText: "Last Name"),
                          customTextField(
                              controller: TextEditingController(),
                              hintText: "E-mail Address"),
                          customTextField(
                              controller: TextEditingController(),
                              hintText: "Password"),
                          customTextField(
                              controller: TextEditingController(),
                              hintText: "Confirm Password"),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Image.asset(
                              "assets/images/signup.png",
                              height: 40,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Get.off(() => LoginScreen());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Already have an account?",
                                  style: TextStyle(fontSize: 15),
                                ),
                                const SizedBox(width: 5),
                                GestureDetector(
                                  child: Image.asset(
                                      "assets/images/sign_in.png",
                                      height: 45),
                                  onTap: (){
                                    Get.back();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                "assets/images/logo_sign_up.png",
                height: 159,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
