import 'package:flutter/material.dart';
import 'package:pointofsales_hive/shared/theme/dark_theme.dart';
import 'package:pointofsales_hive/shared/theme/orange_theme.dart';
import 'package:pointofsales_hive/shared/theme/theme.dart';

class ThemeEditor {
  static getThemes(index) {
    var themeList = [
      getDefaultTheme(),
      getDarkTheme(),
      getElegantTheme(),
      getOrangeTheme(),
    ];
    return themeList[index];
  }

  static int selectedIndex = 1;

  static ValueNotifier<ThemeData> mainTheme =
      ValueNotifier<ThemeData>(getThemes(selectedIndex));

  static change(int index) {
    selectedIndex = index;
    ThemeEditor.mainTheme.value = getThemes(selectedIndex);
  }

  static update() {
    ThemeEditor.mainTheme.value = getThemes(selectedIndex);
  }

  static Widget build({
    required Function(ThemeData theme) builder,
  }) {
    return ValueListenableBuilder<ThemeData>(
      valueListenable: ThemeEditor.mainTheme,
      builder: (context, value, _) {
        return builder(value);
      },
    );
  }

  static getElegantTheme() {}
}

extension ThemeEditorExtension on Widget {
  Widget get useThemeEditor {
    return ValueListenableBuilder<ThemeData>(
      valueListenable: ThemeEditor.mainTheme,
      builder: (context, value, _) {
        return Theme(
          data: value,
          child: this,
        );
      },
    );
  }
}
