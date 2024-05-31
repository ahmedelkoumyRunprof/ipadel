import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_colors.dart';
import 'package:flutter_app/core/widgets/custom_text_field.dart';
import 'package:wave_linear_progress_indicator/wave_linear_progress_indicator.dart';

class UploadReelsScreen extends StatelessWidget {
  const UploadReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Hi, User",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: AppColors.thirdColor,
              endIndent: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  customTextField(
                      controller: TextEditingController(), hintText: "Title"),
                  customTextField(
                      controller: TextEditingController(), hintText: "Caption"),
                  customTextField(
                      controller: TextEditingController(), hintText: "Tags"),
                  const SizedBox(height: 50),
                  Image.asset("assets/images/upload_video.png", height: 60),
                  const SizedBox(height: 79),
                  WaveLinearProgressIndicator(
                    value: 0.1,
                    enableBounceAnimation: true,
                    waveColor: AppColors.primaryColor,
                    color: AppColors.primaryColor,
                    waveBackgroundColor: AppColors.primaryColor.withOpacity(0.1),
                    backgroundColor: Colors.grey[150],
                    minHeight: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
