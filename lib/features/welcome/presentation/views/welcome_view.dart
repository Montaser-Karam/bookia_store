import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/book_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Light Overlay
          Container(color: Colors.white.withValues(alpha: 0.08)),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  const SizedBox(height: 150),

                  Center(
                    child: Image.asset(
                      'assets/images/logo2.png',
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 30),

                  const Text(
                    "Order Your Book Now!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: AppColors.dark,
                    ),
                  ),

                  const Spacer(),

                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: CustomButton(
                      text: "Login",
                      backgroundColor: const Color(0xffBFA054),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                    ),
                  ),

                  const SizedBox(height: 16),

                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: CustomButton(
                      text: "Register",
                      backgroundColor: AppColors.white,
                      textColor: AppColors.dark,
                      side: const BorderSide(color: AppColors.dark, width: 1),
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
