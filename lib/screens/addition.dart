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
  int _currentIndex = 0;

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/addition.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["addition"];
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  // List<Flashcard> _flashcards = [
  //   Flashcard(
  //       "Press Next to learn, Flip Card to see answers", "Answers Appear here"),
  //   Flashcard("9 + 5", "14"),
  //   Flashcard("15 + 14", "29"),
  //   Flashcard("13 + 21", "34"),
  // ];

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
                front: FlashCardView(text: _items[_currentIndex]['question']),
                back: FlashCardView(text: _items[_currentIndex]['answer']),
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
          (_currentIndex + 1 < _items.length) ? _currentIndex + 1 : 0;
    });
  }

  void previousCard() {
    setState(() {
      readJson();
      _currentIndex =
          (_currentIndex - 1 >= 0) ? _currentIndex - 1 : _items.length - 1;
    });
  }
}
