import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textscanner/view/screens/camera_screen/camera.dart';
import 'package:textscanner/view/screens/voice_recognition/voice_assistance.dart';
import 'package:textscanner/view/screens/widgets/constants.dart';

class FloatingActionWidget extends StatelessWidget {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
  FloatingActionWidget({
    Key? key,
    required this.ringDiameter,
  }) : super(key: key);

  final double ringDiameter;

  @override
  Widget build(BuildContext context) {
    return FabCircularMenu(
      key: fabKey,
      ringColor: kBlack,
      fabOpenColor: kBlack,
      fabColor: kBlack,
      fabChild: const Icon(
        Icons.mic_none_outlined,
        color: kWhite,
        size: 40,
      ),
      ringWidth: ringDiameter * .2,
      ringDiameter: ringDiameter,
      children: <Widget>[
        IconButton(
            onPressed: () {
              cameraController.bottombarController.openSheet();
              fabKey.currentState!.close();
            },
            icon: const Icon(
              Icons.camera_alt,
              color: kWhite,
            )),
        IconButton(
            onPressed: () {
              Get.to(() => VoiceAssistance());
            },
            icon: const Icon(
              Icons.mic_none,
              color: kWhite,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              color: kWhite,
            )),
      ],
    );
  }
}
