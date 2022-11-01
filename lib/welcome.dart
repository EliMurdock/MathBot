import 'package:flutter/material.dart';
import 'package:mathbot/HomePage.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FlashCard Quiz')),
      body: Column(
        children: [
          Row(children: const [
            Text(
              "Congrats!",
              style: TextStyle(color: Colors.red),
            )
          ]),
          Row(children: const [
            Text("Nice Job!  Click the button to try some more math facts!")
          ]),
          Row(children: [
            SizedBox(
              width: 100,
              height: 100,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MathBotHomePage()));
                },
                child: const Text("Go Home"),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
