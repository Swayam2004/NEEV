import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:neev/constants/colors.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        titleSpacing: 25,
        shadowColor: Colors.white,
        title: const Text(
          'NEEV.',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFFBA68C8),
              fontSize: 24,
              fontFamily: 'ADLaM Display',
              fontWeight: FontWeight.bold,
              letterSpacing: -1.20,
              shadows: [
                BoxShadow(
                  color: AppColor.primaryColor,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                  spreadRadius: 4,
                ),
              ]),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title
              const Text(
                'Get Started!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFBA68C8),
                  fontSize: 48,
                  fontFamily: 'Afacad',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -2.75,
                ),
              ),
              // Description
              const Text(
                'Access Exclusive Resources, Expert Advice, and a Supportive Community with NEEV.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Afacad',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 32),
              // Hero image
              SvgPicture.asset(
                'assets/images/onboarding.svg',
                semanticsLabel: 'Onboarding',
                height: 300,
              ),
              const SizedBox(height: 48),

              // Get Started Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Add navigation logic here
                    Get.offAllNamed('/signup');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFBA68C8),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Begin your journey!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.85,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Already a member? ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.75,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign In',
                      style: const TextStyle(
                        color: Color(0xFFBA68C8),
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFFBA68C8),
                        letterSpacing: -0.75,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.offAllNamed('/signin'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}
