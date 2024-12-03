

import 'package:get/get.dart';
import 'package:trackexpenses/app/core/bindings/homepage_binding.dart';
import 'package:trackexpenses/app/core/bindings/onboarding_binding.dart';


class ApplicationBindings extends Bindings {
  @override
  void dependencies() {
    OnboardingBinding().dependencies();
    HomeBinding().dependencies();

  
}}