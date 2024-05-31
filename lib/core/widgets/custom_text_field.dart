import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_colors.dart';

Widget customTextField(
    {required TextEditingController controller, required String hintText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: AppColors.secondColor.withOpacity(0.2),
        filled: true,
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
