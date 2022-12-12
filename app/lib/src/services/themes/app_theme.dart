import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mondaymorning/src/services/themes/mm_colors.dart';
import 'package:mondaymorning/src/services/themes/rem_size.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';

class AppTheme {
  ThemeMode themeMode;
  MaterialColor primarySwatch;
  MaterialColor secondarySwatch;
  MaterialAccentColor accentSwatch;
  Color backgroundColor;

  double baseFontSize;
  double baseIconSize;
  double baseSize;
  double baseSpacing;

  AppTheme(
      {required this.themeMode,
      required this.primarySwatch,
      required this.secondarySwatch,
      required this.accentSwatch,
      required this.backgroundColor,
      required this.baseFontSize,
      required this.baseIconSize,
      required this.baseSize,
      required this.baseSpacing});

  Color? get primaryColor => primarySwatch[500];
  Color? get secondaryColor => secondarySwatch[500];
  Color? get accentColor => accentSwatch[200];

  Color? get primaryColorDark => primarySwatch[700];
  Color? get secondaryColorDark => secondarySwatch[700];
  Color? get accentColorDark => accentSwatch[700];

  Color? get primaryColorLight => primarySwatch[100];
  Color? get secondaryColorLight => secondarySwatch[100];
  Color? get accentColorLight => accentSwatch[100];

  Color? get primaryTextColor =>
      themeMode == ThemeMode.dark ? Colors.grey[100] : Colors.grey[900];

  Color? get secondaryTextColor =>
      themeMode == ThemeMode.dark ? Colors.grey[400] : Colors.grey[600];

  Color? get captionColor =>
      themeMode == ThemeMode.dark ? Colors.grey[500] : Colors.grey[600];

  // TODO: Configure variation for desktops

  TextStyle get headline1 => GoogleFonts.ibmPlexSans(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
        // height: 32,
        color: primaryTextColor,
      );

  TextStyle get headline2 => GoogleFonts.ibmPlexSans(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
        // height: 28,
        color: primaryTextColor,
      );

  TextStyle get headline3 => GoogleFonts.sourceSansPro(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
        // height: 24,
        color: primaryTextColor,
      );

  TextStyle get boldBodyText => GoogleFonts.sourceSansPro(
        fontSize: 16,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
        // height: 24,
        color: primaryTextColor,
      );

  TextStyle get regularBodyText => GoogleFonts.sourceSansPro(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
        // height: 24,
        color: primaryTextColor,
      );

  TextStyle get italicBodyText => GoogleFonts.sourceSansPro(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.none,
        // height: 24,
        color: primaryTextColor,
      );

  TextStyle get linkBodyText => GoogleFonts.sourceSansPro(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.underline,
        // height: 24,
        color: primaryTextColor,
      );

  TextStyle get boldBodySubtext => GoogleFonts.sourceSansPro(
        fontSize: 14,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
        // height: 20,
        color: primaryTextColor,
      );

  TextStyle get regularBodySubtext => GoogleFonts.sourceSansPro(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
        // height: 20,
        color: primaryTextColor,
      );

  TextStyle get boldMetadataText => GoogleFonts.sourceSansPro(
        fontSize: 12,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
        // height: 16,
        color: primaryTextColor,
      );

  TextStyle get regularMetadataText => GoogleFonts.inter(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
        // height: 16,
        color: captionColor,
      );

  TextStyle get linkMetadataText => GoogleFonts.sourceSansPro(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.underline,
        // height: 16,
        color: primaryTextColor,
      );

  TextStyle get labelMetadataText => GoogleFonts.sourceSansPro(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        color: themeMode == ThemeMode.dark
            ? primarySwatch[200]
            : primarySwatch[400],
      );

  TextTheme get textTheme => TextTheme(
        headline1: headline1,
        headline2: headline2,
        headline3: headline3,
        headline4: headline3,
        headline5: headline3,
        headline6: headline3,
        subtitle1: labelMetadataText,
        subtitle2: labelMetadataText,
        bodyText1: regularBodyText,
        bodyText2: regularBodySubtext,
        caption: regularMetadataText,
        button: boldBodyText,
        overline: boldBodySubtext,
      );

  ThemeData get materialTheme => ThemeData(
        // GENERAL
        // scrollbarTheme: ScrollbarThemeData(),
        useMaterial3: true,

        extensions: <ThemeExtension<dynamic>>[
          REMSpace(baseSpacing: baseSpacing),
          REMSize(baseSize: baseSize)
        ],

        // COLOR
        backgroundColor: backgroundColor,
        bottomAppBarColor: backgroundColor,
        brightness:
            themeMode == ThemeMode.dark ? Brightness.dark : Brightness.light,
        canvasColor: backgroundColor,
        cardColor: themeMode == ThemeMode.dark
            ? Colors.grey[850]
            : MMColors.kLightCardColor,
        colorScheme: ColorScheme(
          primary: primaryColor!,
          primaryContainer: primaryColorDark,
          secondary: secondaryColor!,
          secondaryContainer: secondaryColorDark,
          surface: backgroundColor,
          background: backgroundColor,
          error: accentColor!,
          onPrimary: primaryTextColor!,
          onSecondary: primaryTextColor!,
          onSurface: primaryTextColor!,
          onBackground: primaryTextColor!,
          onError: primaryTextColor!,
          brightness:
              themeMode == ThemeMode.dark ? Brightness.dark : Brightness.light,
        ),
        // dialogBackgroundColor: backgroundColor,
        // disabledColor: backgroundColor,
        // dividerColor: backgroundColor,
        // errorColor: accentColor!,
        // highlightColor: backgroundColor,
        // hoverColor: backgroundColor,
        // hintColor: backgroundColor,
        // indicatorColor: backgroundColor,
        primaryColor: primaryColor!,
        primaryColorDark: primaryColorDark!,
        primaryColorLight: primaryColorLight!,
        primarySwatch: primarySwatch,
        scaffoldBackgroundColor: backgroundColor,
        shadowColor: backgroundColor,
        splashColor: backgroundColor,

        // TYPOGRAPHY
        fontFamily: 'Roboto',
        iconTheme: IconThemeData(
            color:
                themeMode == ThemeMode.dark ? Colors.grey[100] : Colors.black),
        textTheme: textTheme,

        // COMPONENT THEMES
        appBarTheme: themeMode == ThemeMode.dark
            ? AppBarTheme(
                backgroundColor: backgroundColor,
                foregroundColor: Colors.grey[100])
            : AppBarTheme(
                backgroundColor: backgroundColor,
                foregroundColor: Colors.grey[900]),
        // bottomAppBarTheme: BottomAppBarTheme(),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: themeMode == ThemeMode.dark
              ? primarySwatch[850]
              : primarySwatch[50],
          selectedItemColor: themeMode == ThemeMode.dark
              ? primarySwatch[300]
              : primarySwatch[500],
          unselectedItemColor: themeMode == ThemeMode.dark
              ? primarySwatch[200]
              : primarySwatch[400],
        ),
        // bottomSheetTheme: BottomSheetThemeData(),
        // buttonBarTheme: ButtonBarThemeData(),
        // buttonTheme: ButtonThemeData(),
        cardTheme: CardTheme(
            color:
                themeMode == ThemeMode.dark ? Colors.grey[850] : Colors.white),
        // checkboxTheme: CheckboxThemeData(),
        // chipTheme: ChipThemeData(),
        // dialogTheme: DialogTheme(),
        // dividerTheme: DividerThemeData(),
        // drawerTheme: DrawerThemeData(),
        // floatingActionButtonTheme: FloatingActionButtonThemeData(),
        // navigationBarTheme: NavigationBarThemeData(),
        // popupMenuTheme: PopupMenuThemeData(),
        // progressIndicatorTheme: ProgressIndicatorThemeData(),
        // radioTheme: RadioThemeData(),
        // sliderTheme: SliderThemeData(),
        // snackBarTheme: SnackBarThemeData(),
        // switchTheme: SwitchThemeData(),
        // tabBarTheme: TabBarTheme(),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(MMColors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(EdgeInsets.all(1)),
          ),
        ),
        // textSelectionTheme: TextSelectionThemeData(),
        // timePickerTheme: TimePickerThemeData(),
        // toggleButtonsTheme: ToggleButtonsThemeData(),
        // tooltipTheme: TooltipThemeData(),
      );
}
