import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/services.dart';
import 'package:mathbot/flashcard_view.dart';
import 'package:mathbot/flashcard.dart';
import 'dart:convert';
import 'package:percent_indicator/percent_indicator.dart';

class Addition extends StatefulWidget {
  const Addition({Key? key}) : super(key: key);

  @override
  State<Addition> createState() => _AdditionState();
}

class _AdditionState extends State<Addition> {
  List _items = [];

  List<Flashcard> _flashcards = [
    Flashcard(
        "Press Next to learn, Flip Card to see answers", "Answers Appear here"),
    Flashcard("9 + 5", "14"),
    Flashcard("15 + 14", "29"),
    Flashcard("13 + 21", "34"),
  ];

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    // Database reference goes here
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Let's Do Some Additions")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 700,
              height: 450,
              child: FlipCard(
                front: FlashCardView(text: _flashcards[_currentIndex].question),
                back: FlashCardView(text: _flashcards[_currentIndex].answer),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton.icon(
                    onPressed: previousCard,
                    icon: Icon(Icons.chevron_left),
                    label: Text('Prev')),
                LinearPercentIndicator(
                  width: 1000,
                  lineHeight: 14,
                  percent: .5,
                  backgroundColor: Colors.blueGrey,
                  progressColor: Colors.green,
                ),
                OutlinedButton.icon(
                    onPressed: nextCard,
                    icon: Icon(Icons.chevron_right),
                    label: Text('Next')),
              ],
            )
          ],
        ),
      ),
    );
  }

  void nextCard() {
    setState(() {
      readJson();
      _currentIndex =
          (_currentIndex + 1 < _flashcards.length) ? _currentIndex + 1 : 0;
    });
  }

  void previousCard() {
    setState(() {
      readJson();
      _currentIndex =
          (_currentIndex - 1 >= 0) ? _currentIndex - 1 : _flashcards.length - 1;
    });
  }

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/addition_data.json');
    final data = await json.decode(response);

    setState(() {
      _items = data['addition'];
    });
  }
}
