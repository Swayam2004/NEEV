import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neev/constants/colors.dart';
import 'package:neev/widgets/multi_select_dropdown.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _formKey = GlobalKey<FormState>();

  // Form field controllers and variables
  String? selectedBusinessSector;
  String? selectedLocationType;
  TextEditingController businessDescController = TextEditingController();
  TextEditingController investmentController = TextEditingController();
  TextEditingController savingsController = TextEditingController();
  List<String> selectedAssets = [];
  List<String> selectedSkills = [];
  int? techComfortRating;
  String? timeCommitment;
  Set<String> supportSystem = {};
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String? selectedGender;
  String? selectedEducation;
  String? selectedLanguage;
  List<String> selectedInterests = [];

  // Additional helper methods
  List<DropdownMenuItem<String>> _getBusinessSectors() {
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
        child: Text(value),
      );
    }).toList();
  }

  List<DropdownMenuItem<String>> _getLocationTypes() {
    return [
      'Home-based',
      'Rented Space',
      'Mobile Business',
      'Online Only',
      'Market Stall'
    ].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }

  List<String> _getAssetsList() {
    return [
      'Shop/Commercial Space',
      'Machinery/Equipment',
      'Vehicles',
      'Raw Materials',
      'Inventory/Stock',
      'Digital Assets',
      'Tools and Supplies',
      'Furniture/Fixtures'
    ];
  }

  List<String> _getSkillsList() {
    return [
      'Business Planning',
      'Financial Management',
      'Marketing',
      'Customer Service',
      'Digital Skills',
      'Technical Skills',
      'Leadership',
      'Communication'
    ];
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
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
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white54,
          padding: EdgeInsets.zero, // Remove default padding
          tabAlignment: TabAlignment.start, // Align tabs to start
          labelPadding:
              const EdgeInsets.symmetric(horizontal: 16), // Custom tab padding
          indicatorPadding: const EdgeInsets.symmetric(
              horizontal: 0), // Match indicator with label
          tabs: const [
            Tab(text: 'Personal'),
            Tab(text: 'Education'),
            Tab(text: 'Business'),
            Tab(text: 'Financial'),
            Tab(text: 'Skills'),
            Tab(text: 'Resources'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildPersonalTab(),
          _buildEducationTab(),
          _buildBusinessTab(),
          _buildFinancialTab(),
          _buildSkillsTab(),
          _buildResourcesTab(),
        ],
      ),
    );
  }

  Widget _buildPersonalTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Basic Information'),
          _buildTextField(
            'Full Name',
            controller: nameController,
          ),
          const SizedBox(height: 24),
          _buildTextField(
            'Age',
            controller: ageController,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 24),
          _buildTextField(
            'Phone Number',
            controller: phoneController,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 24),
          _buildSectionTitle('Gender'),
          _buildDropdownField(
            'Select gender',
            items: ['Male', 'Female', 'Other'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: selectedGender,
            onChanged: (value) => setState(() => selectedGender = value),
          ),
          const SizedBox(height: 24),
          _buildSectionTitle('Primary Language'),
          _buildDropdownField(
            'Select language',
            items: ['Hindi', 'English', 'Bengali', 'Tamil', 'Telugu', 'Other']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: selectedLanguage,
            onChanged: (value) => setState(() => selectedLanguage = value),
          ),
        ],
      ),
    );
  }

  Widget _buildEducationTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Education Level'),
          _buildDropdownField(
            'Select highest education',
            items: [
              'Primary Education',
              'Secondary Education',
              'Higher Secondary',
              'Graduate',
              'Post Graduate',
              'Other'
            ].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: selectedEducation,
            onChanged: (value) => setState(() => selectedEducation = value),
          ),
          const SizedBox(height: 24),
          _buildSectionTitle('Areas of Interest'),
          MultiSelectDropdown(
            hint: 'Select your interests',
            options: const [
              'Business Management',
              'Digital Technology',
              'Finance',
              'Marketing',
              'Design',
              'Agriculture',
              'Education',
              'Healthcare'
            ],
            selectedValues: selectedInterests,
            onSelectionChanged: (values) =>
                setState(() => selectedInterests = values),
          ),
        ],
      ),
    );
  }

  Widget _buildBusinessTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Business Sector'),
          _buildDropdownField(
            'Select your sector',
            items: _getBusinessSectors(),
            value: selectedBusinessSector,
            onChanged: (value) =>
                setState(() => selectedBusinessSector = value),
          ),
          const SizedBox(height: 24),
          _buildSectionTitle('Business Description'),
          _buildTextField(
            'Describe your business idea',
            controller: businessDescController,
            maxLines: 3,
          ),
          const SizedBox(height: 24),
          _buildSectionTitle('Location Type'),
          _buildDropdownField(
            'Select location type',
            items: _getLocationTypes(),
            value: selectedLocationType,
            onChanged: (value) => setState(() => selectedLocationType = value),
          ),
        ],
      ),
    );
  }

  Widget _buildFinancialTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Current Savings'),
          _buildTextField(
            'Enter your current savings',
            controller: savingsController,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 24),
          _buildSectionTitle('Required Investment'),
          _buildTextField(
            'Estimated investment needed',
            controller: investmentController,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 24),
          _buildSectionTitle('Available Assets'),
          MultiSelectDropdown(
            hint: 'Select your assets',
            options: _getAssetsList(),
            selectedValues: selectedAssets,
            onSelectionChanged: (values) =>
                setState(() => selectedAssets = values),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Skills Assessment'),
          MultiSelectDropdown(
            hint: 'Select your skills',
            options: _getSkillsList(),
            selectedValues: selectedSkills,
            onSelectionChanged: (values) =>
                setState(() => selectedSkills = values),
          ),
          const SizedBox(height: 24),
          _buildSectionTitle('Technology Comfort'),
          _buildRatingSelector(),
        ],
      ),
    );
  }

  Widget _buildResourcesTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Time Commitment'),
          _buildTimeCommitmentSelector(),
          const SizedBox(height: 24),
          _buildSectionTitle('Support System'),
          _buildSupportSystemCheckList(),
          const SizedBox(height: 32),
          _buildSubmitButton(),
        ],
      ),
    );
  }

  // Helper widgets
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

  Widget _buildTextField(
    String hint, {
    TextEditingController? controller,
    int maxLines = 1,
    TextInputType? keyboardType,
  }) {
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
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Get.offAllNamed('/home'),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFBA68C8),
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: const Text(
          'Complete Setup',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownField(
    String hint, {
    List<DropdownMenuItem<String>>? items,
    String? value,
    void Function(String?)? onChanged,
  }) {
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
      child: DropdownButtonFormField<String>(
        value: value,
        items: items,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        dropdownColor: Colors.white,
      ),
    );
  }

  Widget _buildRatingSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () => setState(() => techComfortRating = index + 1),
          child: Icon(
            index < (techComfortRating ?? 0) ? Icons.star : Icons.star_border,
            size: 40,
            color: const Color(0xFFBA68C8),
          ),
        );
      }),
    );
  }

  Widget _buildTimeCommitmentSelector() {
    return SegmentedButton<String>(
      segments: const [
        ButtonSegment(
          value: 'part-time',
          label: Text('Part Time'),
        ),
        ButtonSegment(
          value: 'full-time',
          label: Text('Full Time'),
        ),
      ],
      selected: {timeCommitment ?? 'part-time'},
      onSelectionChanged: (Set<String> selection) {
        setState(() => timeCommitment = selection.first);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(MaterialState.selected)) {
              return const Color(0xFFBA68C8);
            }
            return Colors.white;
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return const Color(0xFFBA68C8);
          },
        ),
      ),
    );
  }

  Widget _buildSupportSystemCheckList() {
    final supportOptions = {
      'Family Support': 'Support from family members',
      'Local Network': 'Connection with local community',
      'Business Mentor': 'Access to experienced guidance',
      'Financial Support': 'Access to funding sources',
      'Market Access': 'Access to target market',
    };

    return Column(
      children: supportOptions.entries.map((entry) {
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
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
          child: CheckboxListTile(
            value: supportSystem.contains(entry.key),
            onChanged: (bool? value) {
              setState(() {
                if (value ?? false) {
                  supportSystem.add(entry.key);
                } else {
                  supportSystem.remove(entry.key);
                }
              });
            },
            title: Text(
              entry.key,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              entry.value,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
