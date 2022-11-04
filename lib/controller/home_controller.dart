import 'dart:io';
import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:textscanner/view/screens/text_screen/text_screen.dart';

class CameraController extends GetxController {
  final pdf = pw.Document();

  bool textScanning = false;
  XFile? imageFile;
  XFile? pdfCreate;
  String scannedText = "";
  int newIndex = 0;
  screenchange(int index) async {
    newIndex = index;
    bottombarController.selectItem(newIndex);

    update();
  }

  BottomBarWithSheetController bottombarController =
      BottomBarWithSheetController(initialIndex: 0);

  void getImage(ImageSource source) async {
    try {
      final pickedImage = await ImagePicker().pickImage(source: source);
      if (pickedImage != null) {
        textScanning = true;

        imageFile = await cropImage(pickedImage);
        pdfCreate = pickedImage;
        getRecognisedText(pickedImage);
        Get.snackbar("Success", "Image Scanned Successfully",
            colorText: Colors.greenAccent, snackPosition: SnackPosition.BOTTOM);

        update();
      }
    } catch (e) {
      textScanning = false;
      imageFile = null;
      scannedText = " Error Occured While Scanning ";
      update();
    }
    update();
  }

  void getRecognisedText(XFile image) async {
    final inputImage = InputImage.fromFilePath(image.path);
    final textDetector = TextRecognizer(script: TextRecognitionScript.latin);
    RecognizedText recognizedText = await textDetector.processImage(inputImage);
    await textDetector.close().then((value) => screenchange(1));
    scannedText = "";
    for (TextBlock block in recognizedText.blocks) {
      for (TextLine line in block.lines) {
        scannedText = scannedText + line.text + " ";
      }
    }
    // screenchange(1);

    textScanning = false;

    update();
  }

  Future<void> pdfCreating(String scannedText, XFile? pickedImage) async {
    pdf.addPage(
      pw.Page(build: (pw.Context context) {
        return pw.Center(
          child: pw.Text(scannedText),
        );
      }),
    );

    final String date = DateTime.now().toString();
    var filepath = "${pickedImage!.path}/$scannedText.pdf";
    final file = File(filepath);
    await file.writeAsBytes(await pdf.save());
    Get.snackbar("Success", "Pdf Saved Successfully",
        snackPosition: SnackPosition.BOTTOM);
    update();
  }

  Future<XFile?> cropImage(XFile imagefile) async {
    CroppedFile? croppedimage =
        await ImageCropper().cropImage(sourcePath: imagefile.path);

    if (croppedimage == null) {
      return imagefile;
    }
    return XFile(croppedimage.path);
  }
}
