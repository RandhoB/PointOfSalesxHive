import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme_config.dart';
import '../theme_editor.dart';

class TUIFontChanger extends StatefulWidget {
  const TUIFontChanger({Key? key}) : super(key: key);

  @override
  State<TUIFontChanger> createState() => _TUIFontChangerState();
}

class _TUIFontChangerState extends State<TUIFontChanger> {
  List<TextStyle> items = [
    GoogleFonts.roboto(),
    GoogleFonts.openSans(),
    GoogleFonts.lato(),
    GoogleFonts.montserrat(),
    GoogleFonts.oswald(),
    GoogleFonts.sourceSansPro(),
    GoogleFonts.slabo27px(),
    GoogleFonts.slabo13px(),
    GoogleFonts.raleway(),
    GoogleFonts.ptSans(),
    GoogleFonts.merriweather(),
    GoogleFonts.notoSans(),
    GoogleFonts.nunito(),
    GoogleFonts.concertOne(),
    GoogleFonts.prompt(),
    GoogleFonts.workSans(),
    GoogleFonts.aclonica(),
    GoogleFonts.sacramento(),
    GoogleFonts.acme(),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 6.0,
      spacing: 6.0,
      children: List.generate(
        items.length,
        (index) {
          var item = items[index];

          return InkWell(
            onTap: () async {
              debugPrint("it works");
              googleFont = item;
              ThemeEditor.update();
              // await Future.delayed(const Duration(seconds: 1));
              // ThemeEditor.change(1);
              // await Future.delayed(const Duration(seconds: 1));
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                item.fontFamily.toString().replaceAll("_", " "),
                style: item.copyWith(),
              ),
            ),
          );
        },
      ),
    );
  }
}
