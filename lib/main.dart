import 'package:flutter/material.dart';
// Import mainPage file
import 'theme.dart'; // Import theme file
import 'pages/login.dart';

// Main function runs the app
void main() {
  runApp(const MyApp());
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
      home: const Login(), // Default page for app
    );
  }
}
