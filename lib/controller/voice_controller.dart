import 'package:get/get.dart';

class VoiceController extends GetxController {
  String text = " Press The Voice Button To Listen ";
  RxString textRecog = " Press The Voice Button To Listen ".obs;
  RxBool isListening = false.obs;
  textUpdate(String recognisedtext) {
    textRecog.value = recognisedtext;
  }
}
