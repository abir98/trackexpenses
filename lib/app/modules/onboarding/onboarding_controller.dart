import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;

  void nextPage() {
    currentPage++;
  }

  void previousPage() {
    currentPage--;
  }

  void setPage(int index) {
    currentPage.value = index;
  }
}
