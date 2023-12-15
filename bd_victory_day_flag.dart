
//creating bd flag  in flutter

import "package:flutter/material.dart";
import "package:velocity_x/velocity_x.dart";

class VictoryDayScreen extends StatefulWidget {
  const VictoryDayScreen({super.key});

  @override
  State<VictoryDayScreen> createState() => _VictoryDayScreenState();
}

class _VictoryDayScreenState extends State<VictoryDayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 1,
            width: MediaQuery.sizeOf(context).width * 1,
            color: Colors.green[900],
          ),
          Positioned(
              left: 0,
              top: 100,
              right: 0,
              bottom: 100,
              child: Container().box.size(200, 200).red600.roundedFull.make())
        ],
      ),
    );
  }
}
