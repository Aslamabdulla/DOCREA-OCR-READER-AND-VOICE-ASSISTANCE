import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textscanner/view/screens/camera_screen/camera.dart';
import 'package:textscanner/view/screens/text_screen/widgets/glass_container.dart';

class CopytoClipBoardPlugin extends StatelessWidget {
  const CopytoClipBoardPlugin({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 45,
              ),
              TextButton.icon(
                  onPressed: () {
                    cameraController.scannedText.isNotEmpty
                        ? FlutterClipboard.copy(cameraController.scannedText)
                            .then((value) => Get.snackbar(
                                "SUCCES", "TEXT COPIED TO CLIPBOARD",
                                colorText: Colors.greenAccent))
                        : Get.snackbar("ERROR", "EMPTY FIELDS",
                            colorText: Colors.redAccent,
                            snackPosition: SnackPosition.BOTTOM);
                    // cameraController.pdfCreating(cameraController.scannedText,
                    //     cameraController.pdfCreate);
                  },
                  icon: Icon(Icons.copy_all),
                  label: Text("Copy All"))
            ],
          ),
        ),
        GlassContainerWidget(height: height, width: width),
      ],
    );
  }
}
