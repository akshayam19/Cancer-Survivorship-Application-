import 'package:flutter/material.dart';
import 'pages/mainPage.dart'; // Import mainPage file
import 'theme.dart'; // Import theme file

// Main function runs the app
void main() {
  runApp(MyApp());
}

// App
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      title: "SCP App",
      theme: myTheme, // Apply the defined theme
      home: MainPage(), // Default page for app
    );
  }
}