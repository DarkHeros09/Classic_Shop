import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final lightTheme = FlexThemeData.light(
  // appBarOpacity: 0,
  fontFamily: 'Noto Kufi Arabic',
  textTheme: const TextTheme(
    headlineSmall:
        TextStyle(fontSize: 20, fontWeight: FontWeight.w400), //headline 3
    // headline6:
    //     TextStyle(fontSize: 20, fontWeight: FontWeight.w400), //headline 3
    bodyLarge:
        TextStyle(fontSize: 16, fontWeight: FontWeight.w400), //body large
    // subtitle1:
    //     TextStyle(fontSize: 16, fontWeight: FontWeight.w400), //body large
    // subtitle2: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    bodySmall:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w400), //body small
    // bodyText1:
    //     TextStyle(fontSize: 14, fontWeight: FontWeight.w400), //body small
    // bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
    labelLarge: TextStyle(
      fontSize: 14,
      letterSpacing: -.5,
      fontWeight: FontWeight.w500,
    ), //button
    labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w400), //caption
  ),
  // background: const Color(0xFFFAFAFA),
  // appBarBackground: const Color(0xFFFAFAFA),
  surfaceTint: const Color(0xFFFAFAFA),
  materialTapTargetSize: MaterialTapTargetSize.padded,
  // surface: const Color(0xFFFAFAFA),
  // onBackground: const Color(0xFF000000),
  // onSurface: const Color(0xFF000000),
  // primary: const Color(0xFF9D331F),
  // onPrimary: const Color(0xFFFFFFFF),
  // secondary: const Color(0xFFFFFFFF),
  // onSecondary: const Color(0xFF000000),
  tertiary: const Color(0xFF000000),
  onTertiary: const Color(0xFFFFFFFF),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF9D331F),
    secondary: Color(0xFFFFFFFF),
    error: Color(0xffBA1A1A),
    background: Color(0xFFFAFAFA),
    surface: Color(0xFFFAFAFA),
  ),
  useMaterial3: true,
  // appBarStyle: FlexAppBarStyle.scaffoldBackground,
).copyWith(
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Color(0xFF000000)),
    ),
  ),
  dividerTheme: const DividerThemeData(
    color: Colors.transparent,
  ),
  // appBarTheme: const AppBarTheme(
  //   systemOverlayStyle: SystemUiOverlayStyle(
  //     statusBarBrightness: Brightness.light,
  //     statusBarColor: Color(0xFFFAFAFA),
  //     statusBarIconBrightness: Brightness.dark,
  //   ),
  // ),
);

const myFlexLightColorScheme = FlexColorScheme(
  // fontFamily: GoogleFonts.notoKufiArabic().fontFamily,
  fontFamily: 'Noto Kufi Arabic',
  textTheme: TextTheme(
    headlineSmall:
        TextStyle(fontSize: 20, fontWeight: FontWeight.w400), //headline 3
    // headline6:
    //     TextStyle(fontSize: 20, fontWeight: FontWeight.w400), //headline 3
    bodyLarge:
        TextStyle(fontSize: 16, fontWeight: FontWeight.w400), //body large
    // subtitle1:
    //     TextStyle(fontSize: 16, fontWeight: FontWeight.w400), //body large
    // subtitle2: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    bodySmall:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w400), //body small
    // bodyText1:
    //     TextStyle(fontSize: 14, fontWeight: FontWeight.w400), //body small
    // bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
    labelLarge: TextStyle(
      fontSize: 14,
      letterSpacing: -.5,
      fontWeight: FontWeight.w500,
    ), //button
    labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w400), //caption
  ),
  // background: const Color(0xFFFAFAFA),
  appBarBackground: Color(0xFFFAFAFA),
  surfaceTint: Color(0xFFFAFAFA),
  materialTapTargetSize: MaterialTapTargetSize.padded,
  // surface: const Color(0xFFFAFAFA),
  // onBackground: const Color(0xFF000000),
  // onSurface: const Color(0xFF000000),
  // primary: const Color(0xFF9D331F),
  // onPrimary: const Color(0xFFFFFFFF),
  // secondary: const Color(0xFFFFFFFF),
  // onSecondary: const Color(0xFF000000),
  tertiary: Color(0xFF000000),
  onTertiary: Color(0xFFFFFFFF),
  colorScheme: ColorScheme.light(
    primary: Color(0xFF9D331F),
    secondary: Color(0xFFFFFFFF),
    error: Color(0xffBA1A1A),
    background: Color(0xFFFAFAFA),
    surface: Color(0xFFFAFAFA),
  ),
  useMaterial3: true,
);

// .toTheme.copyWith(
// elevatedButtonTheme: const ElevatedButtonThemeData(
//   style: ButtonStyle(
//     backgroundColor: MaterialStatePropertyAll(Color(0xFF000000)),
//   ),
// ),
// dividerTheme: const DividerThemeData(
//   color: Colors.transparent,
// ),
// appBarTheme: const AppBarTheme(
//   systemOverlayStyle: SystemUiOverlayStyle(
//     statusBarBrightness: Brightness.light,
//     statusBarColor: Color(0xFFFAFAFA),
//     statusBarIconBrightness: Brightness.dark,
//   ),
// ),
//     )

final darkTheme = FlexThemeData.dark(
  // appBarOpacity: 0,
  fontFamily: 'Noto Kufi Arabic',
  textTheme: const TextTheme(
    headlineSmall:
        TextStyle(fontSize: 20, fontWeight: FontWeight.w400), //headline 3
    // headline6:
    //     TextStyle(fontSize: 20, fontWeight: FontWeight.w400), //headline 3
    bodyLarge:
        TextStyle(fontSize: 16, fontWeight: FontWeight.w400), //body large
    // subtitle1:
    //     TextStyle(fontSize: 16, fontWeight: FontWeight.w400), //body large
    // subtitle2: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    bodySmall:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w400), //body small
    // bodyText1:
    //     TextStyle(fontSize: 14, fontWeight: FontWeight.w400), //body small
    // bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
    labelLarge: TextStyle(
      fontSize: 14,
      letterSpacing: -.5,
      fontWeight: FontWeight.w500,
    ), //button
    labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w400), //caption
  ),
  // background: const Color(0xFFFAFAFA),
  // appBarBackground: const Color(0xFF121212),
  // surfaceTint: const Color(0xFFFAFAFA),
  materialTapTargetSize: MaterialTapTargetSize.padded,
  // surface: const Color(0xFFFAFAFA),
  // onBackground: const Color(0xFF000000),
  // onSurface: const Color(0xFF000000),
  // primary: const Color(0xFF9D331F),
  // onPrimary: const Color(0xFFFFFFFF),
  // secondary: const Color(0xFFFFFFFF),
  // onSecondary: const Color(0xFF000000),
  tertiary: const Color(0xFF000000),
  onTertiary: const Color(0xFFFFFFFF),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF9D331F),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFFFFFFFF),
    error: Color(0xffBA1A1A),
    onError: Color(0xFFFFFFFF),
    // background: Color(0xFFFAFAFA),
    // onBackground: Color(0xFF000000),
    // surface: Color(0xFFFAFAFA),
    // onSurface: Color(0xFF000000),
  ),
  useMaterial3: true,
  // appBarStyle: FlexAppBarStyle.scaffoldBackground,
).copyWith(
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Color(0xFFFFFFFF)),
    ),
  ),
  dividerTheme: const DividerThemeData(
    color: Colors.transparent,
  ),
  // appBarTheme: const AppBarTheme(
  //   systemOverlayStyle: SystemUiOverlayStyle(
  //     statusBarBrightness: Brightness.dark,
  //     statusBarColor: Color(0xFF121212),
  //     statusBarIconBrightness: Brightness.light,
  //   ),
  // ),
);

final myFlexDarkColorScheme = const FlexColorScheme(
  // fontFamily: GoogleFonts.notoKufiArabic().fontFamily,
  fontFamily: 'Noto Kufi Arabic',
  textTheme: TextTheme(
    headlineSmall:
        TextStyle(fontSize: 20, fontWeight: FontWeight.w400), //headline 3
    // headline6:
    //     TextStyle(fontSize: 20, fontWeight: FontWeight.w400), //headline 3
    bodyLarge:
        TextStyle(fontSize: 16, fontWeight: FontWeight.w400), //body large
    // subtitle1:
    //     TextStyle(fontSize: 16, fontWeight: FontWeight.w400), //body large
    // subtitle2: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    bodySmall:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w400), //body small
    // bodyText1:
    //     TextStyle(fontSize: 14, fontWeight: FontWeight.w400), //body small
    // bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
    labelLarge: TextStyle(
      fontSize: 14,
      letterSpacing: -.5,
      fontWeight: FontWeight.w500,
    ), //button
    labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w400), //caption
  ),
  // background: const Color(0xFFFAFAFA),
  appBarBackground: Color(0xFF121212),
  // surfaceTint: const Color(0xFFFAFAFA),
  materialTapTargetSize: MaterialTapTargetSize.padded,
  // surface: const Color(0xFFFAFAFA),
  // onBackground: const Color(0xFF000000),
  // onSurface: const Color(0xFF000000),
  // primary: const Color(0xFF9D331F),
  // onPrimary: const Color(0xFFFFFFFF),
  // secondary: const Color(0xFFFFFFFF),
  // onSecondary: const Color(0xFF000000),
  tertiary: Color(0xFF000000),
  onTertiary: Color(0xFFFFFFFF),
  colorScheme: ColorScheme.dark(
    primary: Color(0xFF9D331F),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFFFFFFFF),
    error: Color(0xffBA1A1A),
    onError: Color(0xFFFFFFFF),
    // background: Color(0xFFFAFAFA),
    // onBackground: Color(0xFF000000),
    // surface: Color(0xFFFAFAFA),
    // onSurface: Color(0xFF000000),
  ),
  useMaterial3: true,
).toTheme.copyWith(
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Color(0xFFFFFFFF)),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: Colors.transparent,
      ),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: Color(0xFF121212),
          statusBarIconBrightness: Brightness.light,
        ),
      ),
    );
