import 'package:get/get.dart';
import 'package:textscanner/view/screens/homepage/home_page.dart';
import 'package:textscanner/view/screens/on_boarding/on_boarding.dart';

class SplashController extends GetxController {
  Future<void> screenNavigating() async {
    await Future.delayed(const Duration(seconds: 4));
    Get.offAll(() => OnboardingExample());
    update();
  }
}
