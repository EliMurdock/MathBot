import 'package:flutter/material.dart';
import 'package:mathbot/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(brightness: Brightness.dark),
      title: "MathBot",
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}
