import 'package:get/get.dart';
import 'package:neev/screens/congrats_screen.dart';
import 'package:neev/screens/getting_started_screen.dart';
import 'package:neev/screens/goal_screen.dart';
import 'package:neev/screens/home_screen.dart';
import 'package:neev/screens/learn_screen.dart';
import 'package:neev/screens/otp_screen.dart';
import 'package:neev/screens/quiz_screen.dart';
import 'package:neev/screens/signin_screen.dart';
import 'package:neev/screens/signup_screen.dart';
import 'package:neev/screens/start_learning_screen.dart';
import 'package:neev/screens/user_info_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => const GettingStarted()),
    GetPage(name: '/signup', page: () => const SignupScreen()),
    GetPage(name: '/signin', page: () => const SigninScreen()),
    GetPage(
      name: '/otp',
      page: () => OtpScreen(
        source: Get.arguments['source'] ?? 'signin',
      ),
    ),
    GetPage(name: '/info', page: () => const UserInfoScreen()),
    GetPage(name: '/home', page: () => const HomeScreen()),
    GetPage(name: '/goal', page: () => const GoalScreen()),
    GetPage(name: '/start-learning', page: () => const StartLearningScreen()),
    GetPage(name: '/learn', page: () => const LearnScreen()),
    GetPage(name: '/quiz', page: () => const QuizScreen()),
    GetPage(name: '/congrats', page: () => const CongratsScreen()),
  ];
}
