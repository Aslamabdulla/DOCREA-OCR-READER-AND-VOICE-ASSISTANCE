import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textscanner/controller/voice_controller.dart';
import 'package:textscanner/view/screens/voice_recognition/speech_api.dart';
import 'package:textscanner/view/screens/voice_recognition/utils.dart';
import 'package:textscanner/view/screens/widgets/constants.dart';

VoiceController voiceController = Get.put(VoiceController());

class VoiceAssistance extends StatefulWidget {
  VoiceAssistance({super.key});

  @override
  State<VoiceAssistance> createState() => _VoiceAssistanceState();
}

class _VoiceAssistanceState extends State<VoiceAssistance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlack,
        title: Text("VOICE ASSISTANSE"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          reverse: true,
          child: GetX<VoiceController>(
              init: VoiceController(),
              builder: (voiceController) {
                return Container(
                  padding: EdgeInsets.all(15),
                  height: 500,
                  child: SelectableText(
                    voiceController.textRecog.value,
                    style: TextStyle(
                        fontSize: 32,
                        color: kBlack,
                        fontWeight: FontWeight.w400),
                  ),
                );
              })),
      floatingActionButton: GetX<VoiceController>(
          init: VoiceController(),
          builder: (voiceCtrl) {
            return AvatarGlow(
              repeatPauseDuration: Duration(milliseconds: 0),
              animate: voiceCtrl.isListening.value,
              endRadius: 75,
              glowColor: Colors.grey.withOpacity(.5),
              child: FloatingActionButton(
                backgroundColor: kBlack,
                child: Icon(
                  Icons.mic_none,
                  color: kWhite,
                  size: 40,
                ),
                onPressed: toggleRecording,
              ),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Future toggleRecording() => SpeechApi.toggleRecording(
      onListening: (isListening) =>
          voiceController.isListening.value = isListening,
      onResult: (text) {
        voiceController.textRecog.value = text;
        if (voiceController.isListening.value) {
          Future.delayed(Duration(seconds: 1), () {
            Utils.scanText(text);
          });
        }
      });
}
