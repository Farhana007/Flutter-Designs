import 'package:flutter/material.dart';
import 'package:medi_check/const/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class InteractiveViewerPage extends StatefulWidget {
  const InteractiveViewerPage({super.key});

  @override
  State<InteractiveViewerPage> createState() => _InteractiveViewerPageState();
}

class _InteractiveViewerPageState extends State<InteractiveViewerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueC,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InteractiveViewer(
                child: Image.asset("your assests path here")),
            30.heightBox,
            "How to Use Zoom Effect In flutter "
                .text
                .align(TextAlign.center)
                .white
                .bold
                .size(18)
                .make()
          ],
        ),
      ),
    );
  }
}
