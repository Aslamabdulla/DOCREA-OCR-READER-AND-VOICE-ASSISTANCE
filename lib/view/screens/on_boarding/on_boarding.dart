
import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textscanner/view/screens/homepage/home_page.dart';
import 'package:textscanner/view/screens/on_boarding/widgets/concentric_widget.dart';
import 'package:textscanner/view/screens/on_boarding/widgets/widgets.dart';

class OnboardingExample extends StatelessWidget {
  const OnboardingExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: OnboardingWidget(screenWidth: screenWidth),
    );
  }
}
