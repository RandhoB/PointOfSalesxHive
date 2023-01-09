import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointofsales_hive/shared/theme/theme_config.dart';

ThemeData getLightTheme() {
  return ThemeData.light().copyWith(
    primaryColor: Colors.orange[800],
    // primarySwatch:  Color(0xffFA533C),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     shape: ContinuousRectangleBorder(
    //       borderRadius: BorderRadius.circular(64.0),
    //     ),
    //     foregroundColor: Colors.white,
    //   ),
    // ),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromRGBO(6, 40, 61, 1),
      elevation: 0.6,
      titleTextStyle: GoogleFonts.montserrat(
        color: Colors.blueGrey[700],
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey[700],
      ),
    ),
    scaffoldBackgroundColor: const Color(0xff256D85),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      // backgroundColor: Color(0xff26354F),
      backgroundColor: Colors.red,
    ),
    // drawerTheme: DrawerThemeData(
    //   backgroundColor: drawerBackgroundColor,
    // ),
    // iconTheme: IconThemeData(
    //   color: fontColor,
    // ),
    // textTheme: TextTheme(
    //   bodyText1: googleFont.copyWith(color: fontColor),
    //   bodyText2: googleFont.copyWith(color: fontColor),
    // ),
    cardTheme: CardTheme(
      color: const Color(0xff47B5FF),
      elevation: cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cardBorderRadius),
      ),
    ),
    // chipTheme: const ChipThemeData(),
    // tabBarTheme: TabBarTheme(
    //   labelColor: fontColor,
    // ),
  );
}
