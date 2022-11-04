import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

class CopyWidget extends StatelessWidget {
  CopyWidget({super.key});
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildCopy(),
          // buildPase()
        ],
      ),
    );
  }

  Widget buildCopy() => Row(
        children: [
          TextField(
            controller: textController,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.content_copy))
        ],
      );
}
