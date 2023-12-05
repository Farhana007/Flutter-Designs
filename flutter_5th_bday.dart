import 'package:confetti/confetti.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class FlutterBirthDay extends StatefulWidget {
  const FlutterBirthDay({super.key});

  @override
  State<FlutterBirthDay> createState() => _FlutterBirthDayState();
}

class _FlutterBirthDayState extends State<FlutterBirthDay> {
  bool isPlaying = false;
  final _controller = ConfettiController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller.play();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConfettiWidget(
              confettiController: _controller,
              shouldLoop: true,
              //direction
              blastDirectionality: BlastDirectionality.explosive,
            ),
            Positioned(
              top: -8,
              right: -10,
              child: Image.asset("assets/images/bcap.png",
                  height: 150, width: 150),
            ),
            "Happy".text.size(55).orange400.make(),
            "Birthday".text.size(65).semiBold.make(),
            10.heightBox,
            "Flutter"
                .text
                .size(80)
                .white
                .bold
                .makeCentered()
                .box
                .color(Color.fromARGB(255, 27, 68, 140))
                .width(350)
                .rounded
                .make(),
            200.heightBox,
            "Developed By Farhana".text.gray300.make(),
            20.heightBox
          ],
        ),
      )),
    );
  }
}
