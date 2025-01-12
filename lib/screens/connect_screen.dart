// lib/screens/connect_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConnectScreen extends StatelessWidget {
  const ConnectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFBA68C8),
        toolbarHeight: 100,
        titleSpacing: 25,
        title: const Text(
          'NEEV.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'ADLaM Display',
            fontWeight: FontWeight.bold,
            letterSpacing: -1.20,
            shadows: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 8,
                offset: Offset(0, 2),
                spreadRadius: 4,
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onLongPress: () => Get.toNamed('/profile'),
            child: Container(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Connect & Grow!",
                      style: TextStyle(
                        color: const Color(0xFFBA68C8),
                        fontSize: 32,
                        fontFamily: 'ADLaM Display',
                        fontWeight: FontWeight.bold,
                        letterSpacing: -2,
                        shadows: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 8,
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Search Bar
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Search community members...',
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Categories
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    _buildCategoryChip('All Members'),
                    _buildCategoryChip('Business Owners'),
                    _buildCategoryChip('Mentors'),
                    _buildCategoryChip('Financial Experts'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // Community Members List
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  children: [
                    _buildMemberCard(
                      'Lakshmi Sharma',
                      'Business Owner',
                      'Restaurant Business',
                      'assets/images/user1.png',
                    ),
                    _buildMemberCard(
                      'Rajesh Kumar',
                      'Financial Mentor',
                      'Investment Expert',
                      'assets/images/user2.png',
                    ),
                    _buildMemberCard(
                      'Priya Patel',
                      'Business Owner',
                      'Handicraft Business',
                      'assets/images/user3.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show dialog to add new loan or asset
          Get.toNamed('/chatbot');
        },
        backgroundColor: const Color(0xFFBA68C8),
        child: const Icon(Icons.chat, color: Colors.white),
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.white,
        side: const BorderSide(color: Color(0xFFBA68C8)),
        labelStyle: const TextStyle(color: Color(0xFFBA68C8)),
      ),
    );
  }

  Widget _buildMemberCard(
    String name,
    String role,
    String specialization,
    String imagePath,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  role,
                  style: const TextStyle(
                    color: Color(0xFFBA68C8),
                    fontFamily: 'Montserrat',
                  ),
                ),
                Text(
                  specialization,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle connect button press
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFBA68C8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              'Connect',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  void _showCreatePostDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create a Post'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Share your thoughts...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              maxLines: 4,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle post creation
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFBA68C8),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Post',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
