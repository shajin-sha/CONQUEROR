import 'package:conqueror/const/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppTheme currentTheme = AppTheme();

class AppTheme with ChangeNotifier {
  // Change with if what to change app theme in run time.

  static bool isLightTheme = false;

  ThemeMode get currentTheme => isLightTheme ? ThemeMode.light : ThemeMode.dark;

  void changeTheme() {
    isLightTheme = !isLightTheme;
    notifyListeners();
  }

  static ThemeData get appLightTheme {
    return lightTheme();
  }

  static ThemeData get appDarkTheme {
    return darkTheme();
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      titleMedium: GoogleFonts.roboto(textStyle: TextStyle(color: base.titleMedium!.color, fontSize: 15)),
      titleSmall: GoogleFonts.roboto(textStyle: TextStyle(color: base.bodySmall!.color, fontSize: 15, fontWeight: FontWeight.w500)),
      bodyLarge: GoogleFonts.roboto(textStyle: TextStyle(color: base.bodyLarge!.color, fontSize: 14)),
      bodyMedium: GoogleFonts.roboto(textStyle: TextStyle(color: base.bodyMedium!.color, fontSize: 16)),
      labelLarge: GoogleFonts.roboto(textStyle: TextStyle(color: base.labelLarge!.color, fontSize: 14, fontWeight: FontWeight.w500)),
      displayLarge: GoogleFonts.roboto(textStyle: TextStyle(color: base.titleMedium!.color, fontSize: 15, fontWeight: FontWeight.w500)),
      bodySmall: GoogleFonts.roboto(textStyle: TextStyle(color: base.bodySmall!.color, fontSize: 12)),
      headlineMedium: GoogleFonts.roboto(textStyle: TextStyle(color: base.headlineMedium!.color, fontSize: 24)),
      displaySmall: GoogleFonts.roboto(textStyle: TextStyle(color: base.displaySmall!.color, fontSize: 40, fontWeight: FontWeight.w600)),
      displayMedium: GoogleFonts.roboto(textStyle: TextStyle(color: base.titleLarge!.color, fontSize: 16, fontWeight: FontWeight.w800)),
      headlineSmall: GoogleFonts.roboto(textStyle: TextStyle(color: base.headlineSmall!.color, fontSize: 20.5, fontWeight: FontWeight.w700)),
      titleLarge: GoogleFonts.roboto(textStyle: TextStyle(color: base.titleLarge!.color, fontSize: 20, fontWeight: FontWeight.w500)),
      labelSmall: GoogleFonts.roboto(textStyle: TextStyle(color: base.labelSmall!.color, fontSize: 10)),
    );
  }

  // light theme

  static ThemeData lightTheme() {
    Color primaryColor = HexColor(primaryColorString);
    Color secondaryColor = HexColor('#ffffff');
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(primary: primaryColor, secondary: secondaryColor, onPrimary: Colors.white, onSecondary: Colors.black);
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.grey.shade200,
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
      appBarTheme: const AppBarTheme(color: Colors.white, foregroundColor: Colors.black),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: secondaryColor,
      ),
      listTileTheme: ListTileThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)), contentPadding: const EdgeInsets.symmetric(horizontal: 20)),
      popupMenuTheme: const PopupMenuThemeData(color: Colors.white),
      iconTheme: const IconThemeData(color: Color(0xff2b2b2b)),
      primaryColor: primaryColor,
      primaryColorLight: primaryColor,
      primaryColorDark: primaryColor,
      hoverColor: Colors.grey[200],
      splashFactory: InkRipple.splashFactory,
      canvasColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: primaryColor,
        selectionColor: primaryColor,
      ),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.textTheme),
      platform: TargetPlatform.iOS,
      indicatorColor: primaryColor,
      disabledColor: Colors.black.withOpacity(0.1),
      colorScheme: colorScheme.copyWith(background: Colors.white).copyWith(error: HexColor(ConstanceData.colors[1])),
    );
  }

  // dark theme
  static ThemeData darkTheme() {
    Color primaryColor = HexColor(primaryColorString);
    Color secondaryColor = HexColor('#222831');
    final ColorScheme colorScheme = const ColorScheme.dark().copyWith(primary: primaryColor, secondary: secondaryColor, onPrimary: secondaryColor, background: secondaryColor);
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(primaryColor),
          materialTapTargetSize: MaterialTapTargetSize.padded,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
          )),
      inputDecorationTheme: InputDecorationTheme(
        iconColor: primaryColor,
        filled: true,
        fillColor: Colors.grey[900],
        hintStyle: const TextStyle(color: Colors.white),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: HexColor(primaryColorString), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: primaryColor, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: primaryColor, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: primaryColor, width: 1),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Color(0xff121212),
      ),
      popupMenuTheme: const PopupMenuThemeData(color: Colors.black),
      iconTheme: const IconThemeData(color: Colors.white),
      primaryColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: HexColor('#222831')),
      splashFactory: InkRipple.splashFactory,
      canvasColor: const Color(0xff121212),
      scaffoldBackgroundColor: const Color(0xff121212),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: primaryColor,
      ),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      disabledColor: Colors.black.withOpacity(0.4),
      colorScheme: colorScheme.copyWith(secondary: secondaryColor).copyWith(background: const Color(0xff121212)),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
