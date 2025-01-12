import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neev/constants/colors.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        actions: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(-4, 4),
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/images/user_icon.png'),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color(0xFFF3E5F5)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                // Main Content
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 307,
                        child: Text(
                          'Congratulations!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFE8B931),
                            fontSize: 40,
                            fontFamily: 'Oleo Script',
                            fontWeight: FontWeight.bold,
                            letterSpacing: -1,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      // Hero image
                      SvgPicture.asset(
                        'assets/images/congrats.svg',
                        semanticsLabel: 'Congrats',
                        height: 300,
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'You have a strong understanding of business basics!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.32,
                        ),
                      ),
                      const Text(
                        '6/6',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFE8B931),
                          fontSize: 32,
                          fontFamily: 'Oleo Script',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFBA68C8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Continue Learning!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 64)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
