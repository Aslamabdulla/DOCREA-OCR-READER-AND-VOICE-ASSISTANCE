import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textscanner/controller/bottom_controller.dart';
import 'package:textscanner/controller/home_controller.dart';
import 'package:textscanner/view/screens/camera_screen/camera.dart';
import 'package:textscanner/view/screens/homepage/widget/bottm_nav.dart';
import 'package:textscanner/view/screens/homepage/widget/floating_action.dart';
import 'package:textscanner/view/screens/text_screen/text_screen.dart';
import 'package:textscanner/view/screens/widgets/constants.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final List screen = [
    const CameraScreen(),
    const TextScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var ringDiameter = MediaQuery.of(context).size.width * .9;
    return GetBuilder<CameraController>(
        init: CameraController(),
        builder: (CameraController bottomController) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: kBlack,
                title: const Text("HOME "),
                centerTitle: true,
              ),
              floatingActionButton:
                  FloatingActionWidget(ringDiameter: ringDiameter),
              bottomNavigationBar: const BottomNavigationWidget(),
              body: screen[bottomController.newIndex]);
        });
  }
}
