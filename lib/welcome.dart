import 'package:MathBot/main.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('FlashCard Quiz')),
      body: Column(
        children: [
          Row(
            children:[
              Text("Congrats")
            ]
          ),
          Row(
            children: [
              Text("Nice Job!  Click the button to try some more math facts!")
            ]
          ),
          Row(
            children:[
              sizedBox(
                width: 100;
                height: 100;
                child: OutlinedButton(onPressed; () {
                Navigator.pop(
                context,
                MaterialPageRoute(
                builder: (context) => MathBotHomePage()));
                })
              )
            ]
          )
        ]
      )
    )
  }
}
