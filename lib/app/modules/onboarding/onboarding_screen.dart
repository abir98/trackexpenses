import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trackexpenses/app/modules/onboarding/onboarding_controller.dart';
import 'package:trackexpenses/app/modules/onboarding/onboarding_page.dart';

class OnboardingView extends StatelessWidget {
 OnboardingView({super.key});


  final OnboardingController controller = Get.put(OnboardingController());


  final List<Map<String, String>> onboardingData = [
   {
      'imagePath': 'assets/images/onboarding_img.jpg',
      'title': 'Title 1',
      'description': 'Description 1',},
    {
      'image': 'assets/images/onboarding_img.jpg',
      'title': 'Title 2',
      'description': 'Description 2',},
    {
      'image': 'assets/images/onboarding_img.jpg',
      'title': 'Title 3',
      'description': 'Description 3',},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: onboardingData.length,
                onPageChanged: (index) => controller.setPage(index),
                itemBuilder: (context, index) {
                  final page = onboardingData[index];
                  return OnboardingPage(
                    imagePath: page["imagePath"],
                    title: page["title"],
                    description: page["description"],
                  );
                },
              ),
            ),
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(onboardingData.length, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: controller.currentPage.value == index
                            ? Colors.blue
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                )),
            const SizedBox(height: 20),
            Obx(() {
              final isLastPage =
                  controller.currentPage.value == onboardingData.length - 1;

              return ElevatedButton(
                onPressed: () {
                  if (isLastPage) {
                    Get.offAllNamed('/home');
                  } else {
                    controller.nextPage();
                  }
                },
                child: Text(isLastPage ? 'Get Started' : 'Next'),
              );
            }),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}