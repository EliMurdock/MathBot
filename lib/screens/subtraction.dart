import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:mathbot/flashcard_view.dart';

import '../flashcard.dart';

class Subtraction extends StatefulWidget {
  const Subtraction({Key? key}) : super(key: key);

  @override
  State<Subtraction> createState() => _SubtractionState();
}

class _SubtractionState extends State<Subtraction> {
  List<Flashcard> _flashcards = [
    Flashcard("Press Next to learn, Flip Card to see answers", "Answers Appear here"),
    Flashcard("4 - 2", "2"),
    Flashcard("5 - 5", "0"),
    Flashcard("30 - 5", "25"),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Let's Do Some Subtractions")),
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
