import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neev/constants/colors.dart';
import 'package:neev/providers/chat_provider.dart';
import 'package:neev/screens/chat_history_screen.dart';
import 'package:neev/screens/chat_screen.dart';
import 'package:neev/screens/profile_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // list of screens
  final List<Widget> _screens = [
    const ChatHistoryScreen(),
    const ChatScreen(),
    const ProfileScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatProvider>(
      builder: (context, chatProvider, child) {
        return Scaffold(
          body: PageView(
            controller: chatProvider.pageController,
            children: _screens,
            onPageChanged: (index) {
              chatProvider.setCurrentIndex(newIndex: index);
            },
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: AppColor.primaryColor,
                blurRadius: 10,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ]),
            child: BottomNavigationBar(
              currentIndex: chatProvider.currentIndex,
              elevation: 10,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                chatProvider.setCurrentIndex(newIndex: index);
                chatProvider.pageController.jumpToPage(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.book),
                  activeIcon: Icon(CupertinoIcons.book_fill),
                  label: 'Learn',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.gamepad_outlined),
                  activeIcon: Icon(Icons.gamepad),
                  label: 'My Goals',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.money_dollar_circle),
                  activeIcon: Icon(CupertinoIcons.money_dollar_circle_fill),
                  label: 'Tools',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.paperplane),
                  activeIcon: Icon(CupertinoIcons.paperplane_fill),
                  label: 'My Plans',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person),
                  activeIcon: Icon(CupertinoIcons.person_fill),
                  label: 'Connect',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
