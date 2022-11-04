import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textscanner/controller/home_controller.dart';
import 'package:textscanner/view/screens/camera_screen/widgets/after_scan_widget.dart';
import 'package:textscanner/view/screens/camera_screen/widgets/before_scan.dart';
import 'package:textscanner/view/screens/widgets/constants.dart';

CameraController cameraController = Get.put(CameraController());

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        cameraController.imageFile;
      },
    );
    return GetBuilder<CameraController>(
        init: CameraController(),
        builder: (CameraController cameraController) {
          return !cameraController.textScanning &&
                  cameraController.imageFile == null
              ? const BeforeScanWidget()
              : const ListViewWidgetAfterScan();
        });
  }
}
