import 'package:flutter/material.dart';

import 'welcome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFEEF2F5),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return _DesktopLayout(
              constraints: constraints,
            );
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: _TabletLayout(
                constraints: constraints,
              ),
            );
          }
        },
      ),
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout({Key? key, required this.constraints}) : super(key: key);

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 187, 188, 179),
      margin: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          const _Sidebar(),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const _ScreenTitle(),
                const WelcomePage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _TabletLayout extends StatelessWidget {
  const _TabletLayout({Key? key, required this.constraints}) : super(key: key);

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade200,
      margin: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          const _Sidebar(),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _ScreenTitle(),
              SizedBox(
                height: constraints.maxHeight * 0.8,
                child: const WelcomePage(),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _ScreenTitle extends StatelessWidget {
  const _ScreenTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        'MATH BOT',
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}


class _Sidebar extends StatelessWidget {
  const _Sidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      Icons.home,
      Icons.numbers,
      Icons.email,
      Icons.settings
    ];

    return Container(
      width: 90,
      decoration: const BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: [
          Image.asset('images/math_bot.jpeg'),
          const Spacer(
            flex: 1,
          ),
          ListView.separated(
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return IconButton(
                onPressed: () {},
                color: const Color(0xFF3A86FF).withAlpha(155),
                iconSize: 35,
                icon: Icon(icons[index]),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 20,
              );
            },
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}