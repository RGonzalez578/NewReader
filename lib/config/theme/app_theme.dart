import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white70,
      fontFamily: 'RedHatDisplay',
      appBarTheme: appBarTheme());
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Color(0X1A1A1A1A)),
      titleTextStyle: TextStyle(color: Color(0X1A1A1A1A), fontSize: 18));
}
