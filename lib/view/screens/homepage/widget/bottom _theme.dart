import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:flutter/material.dart';
import 'package:textscanner/view/screens/widgets/constants.dart';

BottomBarTheme BottomTheme() {
  return const BottomBarTheme(
    selectedItemIconColor: kAccent,
    decoration: BoxDecoration(
      color: kWhite,
    ),
    itemIconColor: kBlack,
  );
}
