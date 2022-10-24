import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('FlashCard Quiz')),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 250,
                        height: 250,
                        child: FlipCard(
                            front: Card(
                                elevation: 4,
                                child: Center(
                                  child: Text("Awesome FlashCards"),
                                )
                            ),
                            back: Card(
                                elevation: 4,
                                child:Center(
                                  child:Text("yes it is Awesome"),
                                )
                            )
                        )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.chevron_left),
                            label: Text('Prev')),
                        OutlinedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.chevron_right),
                            label: Text('Next')),
                      ],
                    )
                  ]
              ),
            )
        )
    );
  }
}


