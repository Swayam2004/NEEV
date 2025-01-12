import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:get/get.dart';
import 'package:neev/constants/colors.dart';

class OtpScreen extends StatefulWidget {
  final String source;
  const OtpScreen({super.key, required this.source});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otpController = TextEditingController();
  bool hasError = false;

  void _handleOTPVerification() {
    if (_otpController.text.length == 6) {
      if (widget.source == 'signup') {
        Get.toNamed('/info');
      } else if (widget.source == 'signin') {
        Get.offAllNamed('/home');
      }
    }
  }

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
            ],
          ),
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

                const Text(
                  "Enter OTP",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFBA68C8),
                    fontSize: 48,
                    fontFamily: 'Afacad',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -2.75,
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  "We've sent a verification code to your phone number",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                  ),
                ),

                const SizedBox(height: 48),

                // OTP Input Fields
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 6,
                    controller: _otpController,
                    onChanged: (value) {
                      setState(() {
                        hasError = false;
                      });
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(12),
                      fieldHeight: 50,
                      fieldWidth: 45,
                      activeFillColor: Colors.white,
                      activeColor: const Color(0xFFBA68C8),
                      selectedColor: const Color(0xFFBA68C8),
                      inactiveColor: Colors.grey.shade300,
                      selectedFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                    ),
                    cursorColor: const Color(0xFFBA68C8),
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    boxShadows: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 32),

                // Verify Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _handleOTPVerification();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFBA68C8),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Verify',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // Resend OTP
                TextButton(
                  onPressed: () {
                    // Resend OTP logic
                  },
                  child: const Text(
                    "Didn't receive code? Resend",
                    style: TextStyle(
                      color: Color(0xFFBA68C8),
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
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

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }
}
