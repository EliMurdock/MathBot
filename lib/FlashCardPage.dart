import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:mathbot/flashcard_view.dart';
import 'package:mathbot/flashcard.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:mathbot/Congrats.dart';

class FlashCardPage extends StatefulWidget {
  const FlashCardPage({Key? key, required this.title, required this.flashCards})
      : super(key: key);

  final String title;
  final List<Flashcard> flashCards;

  @override
  State<FlashCardPage> createState() => _FlashCardPageState();
}

class _FlashCardPageState extends State<FlashCardPage> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
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
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 700,
              height: 450,
              child: FlipCard(
                key: cardKey,
                speed: 200,
                front: Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: FlashCardView(
                      text: widget.flashCards[_currentIndex].question)),

                back: Container(
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: FlashCardView(
                      text: widget.flashCards[_currentIndex].answer)))),

            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton.icon(
                    onPressed: previousCard,
                    icon: const Icon(Icons.chevron_left),
                    label: const Text('Prev')),
                LinearPercentIndicator(
                  width: 1000,
                  lineHeight: 14,
                  percent: _currentIndex / widget.flashCards.length,
                  backgroundColor: Colors.blueGrey,
                  progressColor: Colors.green,
                  animation: true,
                  animateFromLastPercent: true,
                ),
                OutlinedButton.icon(
                    onPressed: nextCard,
                    icon: const Icon(Icons.chevron_right),
                    label: const Text('Next')),
              ],
            )
          ],
        ),
      ),
    );
  }

  void nextCard() {
    setState(() {
      if (cardKey.currentContext != null) {
        if (!cardKey.currentState!.isFront) {
          cardKey.currentState!.toggleCard();
        }
      }

        if (_currentIndex != widget.flashCards.length - 1) {
          _currentIndex = (_currentIndex + 1 < widget.flashCards.length)
              ? _currentIndex + 1
              : 0;
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CongratsPage(
              )
            ),
          );
        }
      },
    );
  }

  void previousCard() {
    setState(() {
      if (cardKey.currentContext != null) {
        if (!cardKey.currentState!.isFront) {
          cardKey.currentState!.toggleCard();
        }
      }

        _currentIndex = (_currentIndex - 1 >= 0)
            ? _currentIndex - 1
            : widget.flashCards.length - 1;
      },
    );
  }
}
