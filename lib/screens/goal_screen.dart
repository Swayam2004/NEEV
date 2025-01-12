import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neev/widgets/multi_select_dropdown.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  final _formKey = GlobalKey<FormState>();

  // Add these variables at the top of the class
  String? selectedSector;
  String? selectedLocation;
  String? selectedCustomerRange;
  List<String> selectedAssets = [];
  String? selectedSavingsType;
  List<String> selectedIncomeSource = [];
  final List<String> _businessAssets = [];
  final List<String> _incomeSources = [];
  List<String> businessAssets = [];
  String? savingsType;
  List<String> incomeSources = [];

  @override
  void initState() {
    super.initState();
    // Initialize all selections to null
    selectedSector = null;
    selectedLocation = null;
    selectedCustomerRange = null;
  }

  // Add these getter methods
  List<DropdownMenuItem<String>> _getSectorItems() {
    return [
      'Agriculture/Dairy',
      'Retail/Small Shop',
      'Food/Restaurant',
      'Education Services',
      'Handicrafts/Artisan Work',
      'Beauty/Wellness Services',
      'Textile/Clothing',
      'Other'
    ].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
          ),
        ),
      );
    }).toList();
  }

  List<DropdownMenuItem<String>> _getLocationItems() {
    return [
      'Home-based',
      'Rented Shop/Space',
      'Mobile Business',
      'Online Only',
      'Market Stall',
    ].map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
          ),
        ),
      );
    }).toList();
  }

  List<DropdownMenuItem<String>> _getCustomerRangeItems() {
    return [
      '0-10 customers/day',
      '11-30 customers/day',
      '31-50 customers/day',
      '50+ customers/day',
    ].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
          ),
        ),
      );
    }).toList();
  }

  List<DropdownMenuItem<String>> _getSavingsTypeItems() {
    return [
      'Bank Savings Account',
      'Fixed Deposits',
      'Recurring Deposits',
      'Chit Funds',
      'Cash Savings',
      'Digital Wallets',
      'Post Office Savings',
      'Self-Help Group Savings'
    ].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFBA68C8),
        toolbarHeight: 100,
        titleSpacing: 25,
        title: const Text(
          'NEEV.',
          textAlign: TextAlign.center,
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
            colors: [
              Color(0xFFBA68C8),
              Colors.white,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildSectionTitle('Type of Business Sector'),
                          _buildDropdownField(
                            'Select your type',
                            items: _getSectorItems(),
                          ),
                          const SizedBox(height: 24),
                          _buildSectionTitle('Business Overview'),
                          _buildTextField('Describe your business',
                              maxLines: 3),
                          const SizedBox(height: 24),
                          _buildSectionTitle('Daily Customer Count'),
                          _buildDropdownField(
                            'Select range',
                            items: _getCustomerRangeItems(),
                          ),
                          const SizedBox(height: 24),
                          _buildSectionTitle('Alternative Income Sources'),
                          MultiSelectDropdown(
                            hint: 'Select income sources',
                            options: const [
                              'Primary Business',
                              'Part-time Job',
                              'Rental Income',
                              'Agriculture',
                              'Family Support',
                              'Pension',
                              'Investments',
                              'Other'
                            ],
                            selectedValues: incomeSources,
                            onSelectionChanged: (values) {
                              setState(() => incomeSources = values);
                            },
                          ),
                          const SizedBox(height: 24),
                          _buildSectionTitle('Location of Business'),
                          _buildDropdownField('Select one',
                              items: _getLocationItems()),
                          const SizedBox(height: 24),
                          _buildSectionTitle('Required Investment'),
                          _buildTextField(
                              'e.g. like cost of one sewing machine'),
                          const SizedBox(height: 24),
                          _buildSectionTitle('Business Assets'),
                          MultiSelectDropdown(
                            hint: 'Select your assets',
                            options: const [
                              'Shop/Commercial Space',
                              'Machinery/Equipment',
                              'Vehicles',
                              'Raw Materials',
                              'Inventory/Stock',
                              'Digital Assets',
                              'Tools and Supplies',
                              'Furniture/Fixtures'
                            ],
                            selectedValues: businessAssets,
                            onSelectionChanged: (values) {
                              setState(() => businessAssets = values);
                            },
                          ),
                          const SizedBox(height: 24),
                          _buildSectionTitle('Type of Savings'),
                          _buildDropdownField('Select savings type',
                              items: _getSavingsTypeItems()),
                          const SizedBox(height: 24),
                          _buildSectionTitle('Current Savings'),
                          _buildTextField('Enter your current savings'),
                          const SizedBox(height: 32),
                          _buildSubmitButton(),
                        ],
                      ),
                    ),
                  ),
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

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'NEEV.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'ADLaM Display',
              fontWeight: FontWeight.w400,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 24,
            child: Image.asset('assets/images/user_icon.png'),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Set your Goals!",
            style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'ADLaM Display',
                fontWeight: FontWeight.bold,
                letterSpacing: -2,
                shadows: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(-4, 4),
                  ),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Are you on track with your goals?",
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'ADLaM Display',
                fontWeight: FontWeight.w400,
                letterSpacing: -2,
                shadows: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(-4, 4),
                  ),
                ]),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {int maxLines = 1}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.black.withValues(alpha: 0.25),
            fontSize: 16,
            fontFamily: 'Montserrat',
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
    );
  }

  Widget _buildDropdownField(String hint,
      {List<DropdownMenuItem<String>>? items}) {
    // Get current value based on hint
    String? currentValue;
    switch (hint) {
      case 'Select your type':
        currentValue = selectedSector;
        break;
      case 'Select range':
        currentValue = selectedCustomerRange;
        break;
      case 'Select one':
        currentValue = selectedLocation;
        break;
      default:
        currentValue = null;
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonFormField<String>(
          value: currentValue, // Use tracked value
          hint: Text(
            hint,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.25),
              fontSize: 16,
              fontFamily: 'Montserrat',
            ),
          ),
          items: items,
          onChanged: (value) {
            setState(() {
              switch (hint) {
                case 'Select your type':
                  selectedSector = value;
                  break;
                case 'Select range':
                  selectedCustomerRange = value;
                  break;
                case 'Select one':
                  selectedLocation = value;
                  break;
              }
            });
          },
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Get.offAllNamed('/start-learning');
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFBA68C8),
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          'Submit',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
