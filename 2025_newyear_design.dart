import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:animated_text_kit/animated_text_kit.dart'; //import confetti and animated_text_kit package in you .yaml file

/// ---> Simple Happy Newyear Screen Desing For Fun <--- ///
class NewYearScreen extends StatefulWidget {
  const NewYearScreen({super.key});

  @override
  State<NewYearScreen> createState() => _NewYearScreenState();
}

class _NewYearScreenState extends State<NewYearScreen> {
  late ConfettiController _confettiController;
  int _stage = 0;

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 4));
    _startSequence();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  Future<void> _startSequence() async {
    // Stage 0: Goodbye 2024 animation
    await Future.delayed(const Duration(seconds: 3));
    setState(() => _stage = 1);

    // Stage 1: Welcome 2025 animation
    await Future.delayed(const Duration(seconds: 3));
    setState(() => _stage = 2);

    // Stage 2: Happy New Year with confetti
    _confettiController.play();
    await Future.delayed(const Duration(seconds: 5));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          // Background Gradient
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 255, 255),
                    Color.fromARGB(255, 245, 211, 211),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          // Center Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_stage == 0) ...[
                  // ---> Goodbye 2024 Animation <--- ///
                  AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText(
                        'Goodbye 2024',
                        textStyle: const TextStyle(
                          fontSize: 40,
                          color: Color.fromARGB(255, 9, 56, 109),
                          fontWeight: FontWeight.bold,
                        ),
                        duration: const Duration(seconds: 3),
                      ),
                    ],
                    repeatForever: false,
                  ),
                ] else if (_stage == 1) ...[
                  // ---> Welcome 2025 Animation Part <---//
                  AnimatedTextKit(
                    animatedTexts: [
                      ScaleAnimatedText(
                        'Welcome 2025',
                        textStyle: const TextStyle(
                          fontSize: 50,
                          color: Color.fromARGB(255, 93, 7, 4),
                          fontWeight: FontWeight.bold,
                        ),
                        duration: const Duration(seconds: 6),
                      ),
                    ],
                    repeatForever: false,
                  ),
                ] else if (_stage == 2) ...[
                  //---> Happy New Year with Confetti Part <--- //
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        textAlign: TextAlign.center,
                        'Happy New Year',
                        textStyle: const TextStyle(
                          fontSize: 50,
                          color: Color.fromARGB(255, 93, 7, 4),
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    repeatForever: false,
                  ),
                  const SizedBox(height: 20),
                  ConfettiWidget(
                    confettiController: _confettiController,
                    blastDirectionality: BlastDirectionality.explosive,
                    emissionFrequency: 0.1,
                    numberOfParticles: 50,
                    colors: const [
                      Color.fromARGB(255, 161, 39, 5),
                      Color.fromARGB(255, 9, 98, 88),
                      Color.fromARGB(255, 4, 39, 53),
                      Color.fromARGB(255, 232, 102, 70),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
