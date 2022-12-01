import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mathbot/FlashCardPage.dart';
import 'package:mathbot/welcome.dart';

class MathBotHomePage extends StatefulWidget {
  const MathBotHomePage({Key? key}) : super(key: key);

  @override
  State<MathBotHomePage> createState() => _MathBotHomePageState();
}

class _MathBotHomePageState extends State<MathBotHomePage> {
  List _addition = [];
  List _subtraction = [];
  List _division = [];
  List _multiplication = [];

  // Fetch content from the json file
  Future<void> readData(String path) async {
    final String response = await rootBundle.loadString(path);
    final data = await json.decode(response);
    setState(() {
      _addition = data["addition"];
    });
  }

  @override
  void initState() {
    readData('assets/addition.json');
    readData('assets/subtraction.json');
    readData('assets/division.json');
    readData('assets/mutiplication.json');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF2F5),
      appBar: AppBar(
        title: const Text('MathBot'),
      ),
      body: _HomeScreen(
          addition: _addition,
          subtraction: _subtraction,
          multiplication: _multiplication,
          division: _division),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen({
    super.key,
    required List addition,
    required List subtraction,
    required List multiplication,
    required List division,
  })  : _addition = addition,
        _subtraction = subtraction,
        _multiplication = multiplication,
        _division = division;

  final List _addition;
  final List _subtraction;
  final List _multiplication;
  final List _division;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.all(8),
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
                                  builder: (context) => FlashCardPage(
                                      title: "Addition", flashCards: _addition),
                                ),
                              );
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
                                  builder: (context) => FlashCardPage(
                                      title: "Subtraction",
                                      flashCards: _subtraction),
                                ),
                              );
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
                                  builder: (context) => FlashCardPage(
                                      title: "Multiplication",
                                      flashCards: _multiplication),
                                ),
                              );
                            },
                            child: const Text(
                              "Multiplication",
                              style: TextStyle(fontSize: 54.0),
                            ),
                          ),
                        ),
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
                                  builder: (context) => FlashCardPage(
                                      title: "Division", flashCards: _division),
                                ),
                              );
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
    );
  }
}
