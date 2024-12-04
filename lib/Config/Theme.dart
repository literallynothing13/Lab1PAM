

import 'package:flutter/material.dart';
import 'package:lab1/Config/Colors.dart';

var lightTheme = ThemeData(
  useMaterial3: true,

  colorScheme: const ColorScheme.light(
    surface:LBgColor,
    primary: LPrimaryColor,
    onSurface: LFontColor,
    primaryContainer: LDivColor,
    onPrimaryContainer: LFontColor,
    onSecondaryContainer: LLableColor,
  )
);