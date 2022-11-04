import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:textscanner/controller/home_controller.dart';
import 'package:textscanner/view/screens/camera_screen/camera.dart';
import 'package:textscanner/view/screens/homepage/home_page.dart';
import 'package:textscanner/view/screens/homepage/widget/bottom%20_theme.dart';
import 'package:textscanner/view/screens/homepage/widget/bottom_sheet.dart';
import 'package:textscanner/view/screens/widgets/constants.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CameraController>(
        init: CameraController(),
        builder: (CameraController cameraController) {
          return BottomBarWithSheet(
              mainActionButtonTheme: const MainActionButtonTheme(
                  icon: Icon(
                Icons.document_scanner,
                color: kWhite,
                size: 30,
              )),
              sheetChild: BottomSheetWidget(),
              bottomBarTheme: BottomTheme(),
              onSelectItem: (index) {
                cameraController.screenchange(index);
              },
              controller: cameraController.bottombarController,
              items: const [
                BottomBarWithSheetItem(icon: Icons.home_filled, label: "HOME"),
                BottomBarWithSheetItem(
                    icon: Icons.text_fields_outlined, label: "SCANNED TEXT"),
              ]);
        });
  }
}
