import 'package:mathbot/flashcard.dart';

class Questions {
  static final List<Flashcard> addition = [
    Flashcard(
        "Press Next to learn, Flip Card to see answers", "Answers Appear here"),
    Flashcard("9 + 5", "14"),
    Flashcard("15 + 14", "29"),
    Flashcard("13 + 21", "34"),
  ];

  static final List<Flashcard> subtraction = [
    Flashcard(
        "Press Next to learn, Flip Card to see answers", "Answers Appear here"),
    Flashcard("9 - 5", "4"),
    Flashcard("15 - 14", "1"),
    Flashcard("13 - 21", "-8"),
  ];

  static final List<Flashcard> division = [
    Flashcard(
        "Press Next to learn, Flip Card to see answers", "Answers Appear here"),
    Flashcard("10 / 5", "2"),
    Flashcard("34 / 2", "17"),
    Flashcard("50 / 4", "12.5"),
  ];

  static final List<Flashcard> multiplication = [
    Flashcard(
        "Press Next to learn, Flip Card to see answers", "Answers Appear here"),
    Flashcard("9 * 5", "45"),
    Flashcard("15 * 14", "210"),
    Flashcard("13 * 21", "273"),
  ];
}
