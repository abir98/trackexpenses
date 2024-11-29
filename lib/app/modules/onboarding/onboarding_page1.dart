import 'package:flutter/material.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    body:
    
          Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Center(
            child: Placeholder(
              child: Image.asset('assets/images/onboarding_img.jpg',width: 200, height: 200,),

            )),
        ]
      ),
    ));
  }
}
