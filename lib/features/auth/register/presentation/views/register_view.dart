import 'package:flutter/material.dart';
import 'package:bookia_store/core/constants/app_colors.dart';
import 'package:bookia_store/core/widgets/custom_button.dart';
import 'package:bookia_store/core/widgets/custom_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 16,
                color: AppColors.dark,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Hello! Register to get\nstarted',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.dark,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 30),

              const CustomTextField(hintText: 'Username'),
              const SizedBox(height: 12),
              const CustomTextField(hintText: 'Email'),
              const SizedBox(height: 12),
              const CustomTextField(
                hintText: 'Password',
                isPassword: true,
                suffixIcon: Icon(
                  Icons.visibility_outlined,
                  color: AppColors.gray,
                ),
              ),
              const SizedBox(height: 12),
              const CustomTextField(
                hintText: 'Confirm password',
                isPassword: true,
                suffixIcon: Icon(
                  Icons.visibility_outlined,
                  color: AppColors.gray,
                ),
              ),
              const SizedBox(height: 26),

              CustomButton(text: 'Register', onPressed: () {}),
              const SizedBox(height: 255),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: AppColors.dark,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Login Now',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
