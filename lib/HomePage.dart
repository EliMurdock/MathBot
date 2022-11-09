import 'package:flutter/material.dart';
import 'package:mathbot/screens/division.dart';
import 'package:mathbot/screens/addition.dart';
import 'package:mathbot/screens/multiplication.dart';
import 'package:mathbot/screens/subtraction.dart';
import 'package:mathbot/FlashCardPage.dart';
import 'package:mathbot/Questions.dart';

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
                                    builder: (context) => FlashCardPage(
                                        title: "Addition",
                                        flashCards: Questions.addition),
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
                                        flashCards: Questions.subtraction),
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
                                        flashCards: Questions.multiplication),
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
                                        title: "Division",
                                        flashCards: Questions.division),
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
      ),
    );
  }
}
