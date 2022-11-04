import 'package:flutter/material.dart';

class BeforeScanWidget extends StatelessWidget {
  const BeforeScanWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("PLEASE SELECT FILE"),
        Center(
          child: Image.asset(
            "assets/images/girl.png",
            height: 200,
            width: 200,
          ),
        ),
      ],
    );
  }
}
