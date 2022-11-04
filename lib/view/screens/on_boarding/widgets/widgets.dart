import 'package:flutter/material.dart';
import 'package:textscanner/view/screens/on_boarding/on_boarding.dart';
import 'package:textscanner/view/screens/on_boarding/widgets/concentric_widget.dart';
import 'package:textscanner/view/screens/widgets/constants.dart';

final pages = [
  const PageData(
    icon: Icons.bubble_chart,
    title: "SCAN YOUR DOCUMENTS\nEASLY",
    bgColor: Color.fromRGBO(233, 196, 106, .8),
    textColor: Colors.white,
  ),
  const PageData(
    icon: Icons.format_size,
    title: "POWERFUL OCR READER",
    textColor: Colors.white,
    bgColor: Color.fromRGBO(38, 70, 83, .8),
  ),
  const PageData(
    icon: Icons.hdr_weak,
    title: "VOICE TO TEXT",
    textColor: kWhite,
    bgColor: Color.fromRGBO(244, 162, 97, .8),
  ),
  const PageData(
    icon: Icons.hdr_weak,
    textColor: kWhite,
    title: "POWERFUL VOICE ASSISTANCE",
    bgColor: Color.fromRGBO(42, 157, 143, .8),
  ),
];
