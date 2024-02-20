import 'package:flutter/material.dart';

// App's theme
final ThemeData myTheme = ThemeData(
  primaryColor: const Color.fromARGB(255, 33, 159, 243),
  appBarTheme: appBarTheme,
  scaffoldBackgroundColor: Color.fromARGB(255, 234, 234, 234),
  navigationBarTheme: bottomNavBarTheme,
);

// Style for app bar
const AppBarTheme appBarTheme = AppBarTheme(
  backgroundColor: Color.fromARGB(153, 33, 159, 243),
  iconTheme: IconThemeData(
    color: Color.fromARGB(255, 214, 214, 214),
  ),
);

// Style for navigation bar
const NavigationBarThemeData bottomNavBarTheme = NavigationBarThemeData(
  backgroundColor: Color.fromARGB(153, 33, 159, 243),
  indicatorColor: Color.fromARGB(255, 214, 214, 214),
);

// You can also define text styles, button styles, etc.
const TextStyle myTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
);

const TextStyle myTextStyleWhite = TextStyle(
  color: Colors.white,
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
);

// If you have more complex themes, you can create a class for it
class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // Define light theme properties
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    // Define dark theme properties
  );
}
