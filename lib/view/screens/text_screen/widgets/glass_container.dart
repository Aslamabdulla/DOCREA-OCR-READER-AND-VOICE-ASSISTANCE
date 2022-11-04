import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:textscanner/view/screens/camera_screen/camera.dart';
import 'package:textscanner/view/screens/widgets/constants.dart';

class GlassContainerWidget extends StatelessWidget {
  const GlassContainerWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: height - 210,
      width: width - 100,
      gradient: LinearGradient(
        colors: [
          Colors.white.withOpacity(0.40),
          Colors.white.withOpacity(0.10)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderGradient: LinearGradient(
        colors: [
          kBlack.withOpacity(.6),
          kBlack.withOpacity(.6),
          kBlack.withOpacity(.6),
          kBlack.withOpacity(.6),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.0, 0.39, 0.40, 1.0],
      ),
      blur: 15,
      borderWidth: 1.5,
      elevation: 0,
      isFrostedGlass: true,
      shadowColor: Colors.black.withOpacity(0.20),
      alignment: Alignment.center,
      frostedOpacity: 0.12,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(10),
      child: Center(
        child: SelectableText(
          cameraController.scannedText,
          maxLines: 25,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
