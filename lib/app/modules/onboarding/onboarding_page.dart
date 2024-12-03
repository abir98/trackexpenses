import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final String imagePath = 'assets/images/onboarding_img.jpg' ;
  final String title = '';
  final String description = '';
  const OnboardingPage({super.key, required String? imagePath, required String? title, required String? description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Placeholder(
          child: Image.asset(
            'assets/images/onboarding_img.jpg',
            width: 200,
            height: 200,
          ),
        )),
      ]),
    ));
  }
}
