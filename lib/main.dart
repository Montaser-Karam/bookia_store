import 'package:flutter/material.dart';
import 'core/constants/app_colors.dart';
import 'features/splash/presentation/views/splash_view.dart';
import 'features/welcome/presentation/views/welcome_view.dart';
import 'features/auth/login/presentation/views/login_view.dart';
import 'features/auth/register/presentation/views/register_view.dart';

void main() {
  runApp(const BookiaApp());
}

class BookiaApp extends StatelessWidget {
  const BookiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookia Store App',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        fontFamily: 'Playfair Display',
        primaryColor: AppColors.primary,
      ),

      home: const SplashScreen(),

      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginView(),
        '/register': (context) => const RegisterView(),
      },
    );
  }
}
