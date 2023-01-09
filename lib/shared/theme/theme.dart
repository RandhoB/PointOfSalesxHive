//#GROUP_TEMPLATE theme

import 'package:flutter/material.dart';
import 'package:pointofsales_hive/shared/theme/theme_config.dart';

ThemeData getDefaultTheme() {
  return ThemeData(
    primaryColor: primaryColor,
    primarySwatch: primarySwatch,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(64.0),
        ),
        foregroundColor: Colors.white,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: appbarBackgroundColor,
      elevation: 0.6,
      titleTextStyle: googleFont.copyWith(
        color: Colors.blueGrey[700],
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey[700],
      ),
    ),
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    drawerTheme: DrawerThemeData(
      backgroundColor: drawerBackgroundColor,
    ),
    iconTheme: IconThemeData(
      color: textColor1,
    ),
    textTheme: TextTheme(
      bodyText1: googleFont.copyWith(color: textColor1),
      bodyText2: googleFont.copyWith(color: textColor1),
    ),
    cardTheme: CardTheme(
      elevation: cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cardBorderRadius),
      ),
    ),
    chipTheme: const ChipThemeData(),
    tabBarTheme: TabBarTheme(
      labelColor: textColor1,
    ),
    //#TEMPLATE theme_scroll
    scrollbarTheme: const ScrollbarThemeData().copyWith(
      thumbColor: MaterialStateProperty.all(Colors.red),
    ),
    //#END
  );
}
