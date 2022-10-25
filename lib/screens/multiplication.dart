import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:mathbot/flashcard_view.dart';

import '../flashcard.dart';

class Multiplication extends StatefulWidget {
  const Multiplication({Key? key}) : super(key: key);

  @override
  State<Multiplication> createState() => _MultiplicationState();
}

class _MultiplicationState extends State<Multiplication> {
  List<Flashcard> _flashcards = [
    Flashcard("Press Next to learn, Flip Card to see answers", "Answers Appear here"),
    Flashcard("10 X 5", "50"),
    Flashcard("5 X 10", "50"),
    Flashcard("6 X 9", "54"),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Let's Do Some Multiplicatoins")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 250,
                height: 250,
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
      _currentIndex = (_currentIndex + 1 < _flashcards.length) ? _currentIndex + 1 : 0;
    });
  }

  void previousCard() {
    setState(() {
      _currentIndex = (_currentIndex - 1 >= 0) ? _currentIndex - 1 : _flashcards.length - 1;
    });
  }
}
