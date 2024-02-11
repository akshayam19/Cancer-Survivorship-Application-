import 'package:flutter/material.dart';

// Define your app's theme
final ThemeData myTheme = ThemeData(
  primaryColor: Color.fromARGB(255, 243, 156, 33),
  // Add more theme properties as needed
);

// You can also define text styles, button styles, etc.
final TextStyle myTextStyle = TextStyle(
  color: Colors.black,
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
