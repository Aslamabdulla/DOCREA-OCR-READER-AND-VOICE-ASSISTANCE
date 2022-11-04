import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:textscanner/view/screens/camera_screen/camera.dart';
import 'package:textscanner/view/screens/text_screen/widgets/copy_to_clipboard.dart';
import 'package:textscanner/view/screens/text_screen/widgets/glass_container.dart';
import 'package:textscanner/view/screens/widgets/constants.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: kWhite,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: CopytoClipBoardPlugin(height: height, width: width),
    );
  }
}
