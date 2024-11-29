import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:trackexpenses/app/core/bindings/homepage_binding.dart';
import 'package:trackexpenses/app/core/bindings/onboarding_binding.dart';
import 'package:trackexpenses/app/modules/home/home_page.dart';
import 'package:trackexpenses/app/modules/onboarding/onboarding_page1.dart';
import 'package:trackexpenses/app/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.INITIAL, 
    page: () => const OnboardingPage1(), 
    binding: OnboardingBinding()),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
