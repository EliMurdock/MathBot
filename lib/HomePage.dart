import 'package:flutter/material.dart';
import 'package:mathbot/screens/division.dart';
import 'package:mathbot/screens/addition.dart';
import 'package:mathbot/screens/multiplication.dart';
import 'package:mathbot/screens/subtraction.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Math Bot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MathBotHomePage(),
    );
  }
}

class MathBotHomePage extends StatefulWidget {
  const MathBotHomePage({Key? key}) : super(key: key);

  @override
  State<MathBotHomePage> createState() => _MathBotHomePageState();
}

class _MathBotHomePageState extends State<MathBotHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MathBot'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 500,
                            height: 350,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Addition()));
                              },
                              child: const Text(
                                "Addition",
                                style: TextStyle(fontSize: 54.0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 500,
                            height: 350,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Subtraction()));
                              },
                              child: const Text(
                                "Subtraction",
                                style: TextStyle(fontSize: 54.0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 500,
                            height: 350,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Multiplication()));
                              },
                              child: const Text(
                                "Multiplication",
                                style: TextStyle(fontSize: 54.0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 500,
                            height: 350,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Division()));
                              },
                              child: const Text(
                                "Division",
                                style: TextStyle(fontSize: 54.0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
