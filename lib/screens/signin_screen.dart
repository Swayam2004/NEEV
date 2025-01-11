import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neev/constants/colors.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        toolbarHeight: 100,
        titleSpacing: 25,
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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 32),

                // Title
                const Text(
                  "Let's Go!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFBA68C8),
                    fontSize: 48,
                    fontFamily: 'Afacad',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -2.75,
                  ),
                ),

                const SizedBox(height: 32),

                SvgPicture.asset(
                  'assets/images/register.svg',
                  semanticsLabel: 'Register',
                  height: 300,
                ),

                const SizedBox(height: 32),

                // Form Fields
                _buildTextField('Phone Number', Icons.call),

                const SizedBox(height: 16),

                // Sign Up Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFBA68C8),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Sign In to your Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                // Login Link
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Register',
                            style: TextStyle(
                              color: Color(0xFFBA68C8),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xFFBA68C8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, IconData icon,
      {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon, color: const Color(0xFFBA68C8)),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
