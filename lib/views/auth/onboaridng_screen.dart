// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_final_fields, prefer_const_constructors

import 'package:app/views/auth/signin_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      'image': 'assets/images/gettyimages-1408909553-612x612-removebg-preview.png',
      'title': 'Find Your Doctor',
      'desc': 'To find best Doctors from list near by you',
    },
    {
      'image': 'assets/images/istockphoto-1028847418-612x612-removebg-preview.png',
      'title': 'Book Appointments',
      'desc': 'Easily book appointments with just one click',
    },
    {
      'image': 'assets/images/istockphoto-1248436408-612x612-removebg-preview (1).png',
      'title': 'Health Records',
      'desc': 'Keep track of your medical history in one place',
    },
  ];

  void _nextPage() {
    if (_currentPage < onboardingData.length - 1) {
      _pageController.animateToPage(
        _currentPage + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _finishOnboarding();
    }
  }

  void _finishOnboarding() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => SigninScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingData.length,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(onboardingData[index]['image']!, height: 300),
                    SizedBox(height: 30),
                    Text(
                      onboardingData[index]['title']!,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 43, 126, 46)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      onboardingData[index]['desc']!,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: _nextPage,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 43, 126, 46),
                        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      ),
                      child: Text(
                        _currentPage == onboardingData.length - 1 ? 'Get Started' : 'Next',
                        style: TextStyle(fontSize: 16,color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboardingData.length,
                        (dotIndex) => AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          height: 8,
                          width: _currentPage == dotIndex ? 24 : 8,
                          decoration: BoxDecoration(
                            color: _currentPage == dotIndex ? const Color.fromARGB(255, 43, 126, 46) : const Color.fromARGB(255, 160, 160, 160),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: _finishOnboarding,
              child: Text('Skip', style: TextStyle(color: const Color.fromARGB(255, 43, 126, 46), fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}

