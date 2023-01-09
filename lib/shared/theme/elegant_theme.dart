import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointofsales_hive/shared/theme/theme_config.dart';

ThemeData getElegantTheme() {
  return ThemeData.dark().copyWith(
    primaryColor: const Color(0xff212332),
    // primarySwatch:  Color(0xffFA533C),
    canvasColor: const Color(0xff26354F),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     shape: ContinuousRectangleBorder(
    //       borderRadius: BorderRadius.circular(64.0),
    //     ),
    //     foregroundColor: Colors.white,
    //   ),
    // ),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xff212332),
      elevation: 0.6,
      titleTextStyle: GoogleFonts.montserrat(
        color: Colors.blueGrey[700],
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: const Color(0xff2A2D3E),
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
    textTheme: TextTheme(
      bodyText1: googleFont.copyWith(color: Colors.white),
      bodyText2: googleFont.copyWith(color: Colors.white),
    ),
    cardTheme: CardTheme(
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
