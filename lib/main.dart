import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> names = [
    'Physical Activity',
    'Nutrition',
    'Spirituality',
    'Cancer-specific Information',
    'Resources'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NamesList(names: names),
    );
  }
}

class NamesList extends StatelessWidget {
  final List<String> names;

  NamesList({required this.names});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Names List'),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(names[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NameDetailsPage(name: names[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class NameDetailsPage extends StatelessWidget {
  final String name;

  NameDetailsPage({required this.name});

  @override
  Widget build(BuildContext context) {
    // Here you can define distinct information for each name
    String detailText = '';
    List<TextSpan> links = [];
    if (name == 'Physical Activity') {
      detailText = 'Information about Physical Activity. ';
      links.add(TextSpan(
        text: '6 Lifestyle Changes to Improve Your Cancer Care\n',
        style: const TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () 
            // Implement navigation or action when link is clicked
            => launchUrlString('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
      ));
      links.add(TextSpan(
        text: 'Physical Activity and the Person with Cancer\n',
        style: const TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () 
            // Implement navigation or action when link is clicked
            => launchUrlString('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
      ));
      links.add(TextSpan(
        text: 'Exercise During Cancer Treatment\n',
        style: const TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () 
            // Implement navigation or action when link is clicked
            => launchUrlString('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
      ));
      links.add(TextSpan(
        text: 'Physical Activity Cancer Survivors\n',
        style: const TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () 
            // Implement navigation or action when link is clicked
            => launchUrlString('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
      ));
      links.add(TextSpan(
        text: 'Physical Activity and Cancer Care- A Review\n',
        style: const TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () 
            // Implement navigation or action when link is clicked
            => launchUrlString('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
      ));
    } 

    return Scaffold(
      appBar: AppBar(
        title: const Text('Name Details'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: detailText,
            style: const TextStyle(fontSize: 24.0, color: Colors.black),
            children: links,
          ),
        ),
      ),
    );
  }
}
