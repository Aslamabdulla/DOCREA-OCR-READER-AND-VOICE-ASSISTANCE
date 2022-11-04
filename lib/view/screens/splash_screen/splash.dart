import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textscanner/controller/splash_controller.dart';

SplashController splashController = Get.put(SplashController());

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      splashController.screenNavigating();
    });
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(color: Color.fromRGBO(4, 3, 5, 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/images/giphy.gif",
                height: height / 4,
                width: width - 50,
              ),
            ),
            Image.asset(
              "assets/images/onboarding.png",
              height: 200,
              width: 200,
            ),
            const Text(
              "DOCREA PRO V1.0",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Oswald',
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
