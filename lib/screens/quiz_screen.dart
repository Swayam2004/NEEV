import 'package:flutter/material.dart';

class Question {
  final String text;
  final List<String> options;
  final int correctOption;

  Question({
    required this.text,
    required this.options,
    required this.correctOption,
  });
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int? selectedOption;
  List<int?> answers = List.filled(6, null);

  final List<Question> questions = [
    Question(
      text:
          'Radha wants to start a tiffin service. What should she check first?',
      options: [
        'How many workers to hire',
        'What color containers to buy',
        'Who will eat her food and how much they\'ll pay',
        'How to advertise on social media'
      ],
      correctOption: 2,
    ),
    Question(
      text:
          'What is the first step in financial planning for a small business?',
      options: [
        'Calculate startup costs',
        'Design a logo',
        'Hire employees',
        'Create social media accounts'
      ],
      correctOption: 0,
    ),
    // Add more questions...
  ];

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
            colors: [Color(0xFFBA68C8), Color(0xFFFEE5DF)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Quiz Time!",
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
                      const SizedBox(height: 24),
                      _buildQuestionCard(),
                      const SizedBox(height: 24),
                      _buildOptionsGrid(),
                      const SizedBox(height: 32),
                      _buildNavigationButtons(),
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

  Widget _buildQuestionCard() {
    return Container(
      padding: const EdgeInsets.all(16),
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
      child: Column(
        children: [
          Text(
            '${currentQuestionIndex + 1} / ${questions.length}',
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.42),
              fontSize: 16,
              fontFamily: 'Montserrat',
            ),
          ),
          const SizedBox(height: 8),
          Text(
            questions[currentQuestionIndex].text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFFBA68C8),
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionsGrid() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 1.1,
      children: List.generate(
        questions[currentQuestionIndex].options.length,
        (index) => _buildOptionCard(index),
      ),
    );
  }

  Widget _buildOptionCard(int index) {
    bool isSelected = selectedOption == index;

    return InkWell(
      onTap: () => setState(() => selectedOption = index),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFBA68C8) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            questions[currentQuestionIndex].options[index],
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (currentQuestionIndex > 0)
          ElevatedButton(
            onPressed: _previousQuestion,
            child: const Text('Previous'),
          ),
        ElevatedButton(
          onPressed: selectedOption != null
              ? currentQuestionIndex < questions.length - 1
                  ? _nextQuestion
                  : _submitQuiz
              : null,
          child: Text(
            currentQuestionIndex < questions.length - 1 ? 'Next' : 'Submit',
          ),
        ),
      ],
    );
  }

  void _nextQuestion() {
    setState(() {
      answers[currentQuestionIndex] = selectedOption;
      currentQuestionIndex++;
      selectedOption = answers[currentQuestionIndex];
    });
  }

  void _previousQuestion() {
    setState(() {
      answers[currentQuestionIndex] = selectedOption;
      currentQuestionIndex--;
      selectedOption = answers[currentQuestionIndex];
    });
  }

  void _submitQuiz() {
    answers[currentQuestionIndex] = selectedOption;
    int score = 0;
    for (int i = 0; i < questions.length; i++) {
      if (answers[i] == questions[i].correctOption) {
        score++;
      }
    }

    Navigator.pushNamed(
      context,
      '/congrats',
      arguments: {
        'score': score,
        'total': questions.length,
      },
    );
  }
}
