import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:textscanner/view/screens/camera_screen/camera.dart';
import 'package:textscanner/view/screens/widgets/constants.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: kLightBlack),
              child: Center(
                child: TextButton.icon(
                  onPressed: () async {
                    cameraController.getImage(ImageSource.camera);
                    cameraController.bottombarController.closeSheet();
                  },
                  icon: const Icon(
                    Icons.photo_camera,
                    color: kWhite,
                  ),
                  label: const Text(
                    "CAMERA",
                    style: TextStyle(color: kWhite),
                  ),
                ),
              ),
            ),
            kWidth15,
            Text("OR"),
            kWidth15,
            Container(
              height: 120,
              width: 120,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: kLightBlack),
              child: Center(
                child: TextButton.icon(
                  onPressed: () async {
                    cameraController.getImage(ImageSource.gallery);
                    cameraController.bottombarController.closeSheet();
                  },
                  icon: const Icon(
                    Icons.photo_library,
                    color: kWhite,
                  ),
                  label: Text(
                    "GALLERY",
                    style: TextStyle(color: kWhite),
                  ),
                ),
              ),
            ),
          ],
        ),
        kHeight25,
        Text("PLEASE CHOOSE IMAGE FILE")
      ],
    );
  }
}
