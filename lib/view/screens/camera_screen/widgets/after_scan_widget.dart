import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:textscanner/view/screens/camera_screen/camera.dart';
import 'package:textscanner/view/screens/widgets/constants.dart';

class ListViewWidgetAfterScan extends StatelessWidget {
  const ListViewWidgetAfterScan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        kHeight10,
        Center(child: Text("SELECTED IMAGE")),
        if (cameraController.imageFile != null)
          cameraController.textScanning
              ? const Center(child: CupertinoActivityIndicator())
              : Padding(
                  padding: const EdgeInsets.all(25),
                  child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child:
                            Image.file(File(cameraController.imageFile!.path)),
                      )),
                ),
        Center(child: Text("CONVERT YOUR DOCUMENT IN TO TEXT EASLY!!!")),
        Center(child: Text("REALTIME TEXT RECOGNITION")),
        Container(
          margin: EdgeInsets.only(top: 25),
          decoration: BoxDecoration(),
          child: Center(
            child: Image.asset(
              "assets/images/scandocument.png",
              height: 150,
              width: 150,
            ),
          ),
        )
      ],
    );
  }
}
