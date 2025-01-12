import 'package:flutter/material.dart';
import 'package:neev/constants/colors.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Explore our Tools!",
                        style: TextStyle(
                            color: const Color(0xFFBA68C8),
                            fontSize: 32,
                            fontFamily: 'ADLaM Display',
                            fontWeight: FontWeight.bold,
                            letterSpacing: -2.75,
                            shadows: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.1),
                                spreadRadius: 8,
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ]),
                      ),
                      const SizedBox(height: 24),
                      _buildToolsGrid(height),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildToolsGrid(double height) {
    final tools = [
      {
        'title': "Laxmi's Diary",
        'subtitle': 'Track your treasure!',
        'icon': 'assets/icons/expense_tracker.png',
        'route': '/expense-tracker'
      },
      {
        'title': 'Loan Lady',
        'subtitle': 'Smart borrowing starts here!',
        'icon': 'assets/icons/loan_calculator.png',
        'route': '/loan-calculator'
      },
      {
        'title': 'Budget Planner',
        'subtitle': 'Plan your spending wisely',
        'icon': 'assets/icons/budget.png',
        'route': '/budget-planner'
      },
      {
        'title': 'Savings Monitor',
        'subtitle': 'Grow your wealth',
        'icon': 'assets/icons/savings.png',
        'route': '/savings-calculator'
      },
      {
        'title': 'EMI Calculator',
        'subtitle': 'Plan your loan payments',
        'icon': 'assets/icons/emi.png',
        'route': '/emi-calculator'
      },
      {
        'title': 'Business Plan',
        'subtitle': 'Create your roadmap',
        'icon': 'assets/icons/business_plan.png',
        'route': '/business-plan'
      },
    ];

    return SizedBox(
      height: height * 0.7, // Set fixed height
      child: GridView.builder(
        physics: const BouncingScrollPhysics(), // Enable scrolling
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.65, // Adjusted ratio
        ),
        itemCount: tools.length,
        itemBuilder: (context, index) => _buildToolCard(tools[index]),
      ),
    );
  }

  Widget _buildToolCard(Map<String, String> tool) {
    return GestureDetector(
      onTap: () {
        // Navigate to tool screen
      },
      child: Container(
        padding: const EdgeInsets.all(12), // Reduced padding
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0xFFBA68C8),
            width: 2,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Added this
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              tool['icon']!,
              // height: 36, // Reduced from 40
              // width: 36,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 8), // Fixed spacing
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    tool['title']!,
                    style: const TextStyle(
                      fontSize: 18, // Reduced from 20
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.5,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    tool['subtitle']!,
                    style: const TextStyle(
                      fontSize: 14, // Reduced from 15
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
