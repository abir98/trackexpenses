 
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:trackexpenses/app/modules/onboarding/onboarding_controller.dart';

class OnboardingBinding  extends Bindings{
   @override
   void dependencies() {
     Get.lazyPut<OnboardingController>(() => OnboardingController());
   }
 }