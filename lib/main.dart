import 'dart:math';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'Napier',
                  textStyle: const TextStyle(color: Colors.white),
                ),
                WavyAnimatedText('Family Dice',
                    textStyle: const TextStyle(color: Colors.white)),
                WavyAnimatedText('Game',
                    textStyle: const TextStyle(color: Colors.white))
              ],
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DiceyState();
}

class _DiceyState extends State<DicePage> {
  int leftDiceNumb = 1;
  int rightDiceNumb = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumb = Random().nextInt(6) + 1;
                    rightDiceNumb = Random().nextInt(6) + 1;
                    leftDiceNumb = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$leftDiceNumb.png'),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumb = Random().nextInt(6) + 1;
                    rightDiceNumb = Random().nextInt(6) + 1;
                    leftDiceNumb = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightDiceNumb.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
