import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart'; //Import shocaseview package in your .yaml
import 'package:velocity_x/velocity_x.dart';  //velocity_x for design

class ShowcasePackage extends StatefulWidget {
  const ShowcasePackage({super.key});

  @override
  State<ShowcasePackage> createState() => _ShowcasePackageState();
}

class _ShowcasePackageState extends State<ShowcasePackage> {
  final GlobalKey _notifikey = GlobalKey();
  final GlobalKey _gamekey = GlobalKey();

  final GlobalKey _settingkey = GlobalKey();

  final GlobalKey _addkey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) =>
        ShowCaseWidget.of(context)
            .startShowCase([_notifikey, _gamekey, _settingkey, _addkey]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// ---> Body Part Design <--- ///
      body: Column(
        children: [
          Container(
            height: 90,
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            color: const Color.fromARGB(255, 54, 7, 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Showcase View".text.white.xl.bold.make(),
                Row(
                  children: [
                    Showcase(
                      key: _notifikey,
                      title: "Notification",
                      description: "This is Notification Icon",
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.bell,
                            color: Colors.white,
                          )),
                    ),
                    Showcase(
                      key: _gamekey,
                      title: "Games",
                      description: "This is Game Section Icon",
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.game_controller,
                            color: Colors.white,
                          )),
                    ),
                    Showcase(
                      key: _settingkey,
                      title: "Setting",
                      description: "This is Description Key",
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.settings,
                            color: Colors.white,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          Center(
            child: "Let's Learn about ShowcaseView"
                .text
                .bodyLarge(context)
                .bold
                .size(20)
                .make(),
          ),
          50.widthBox,
          Showcase(
            key: _addkey,
            title: "Adding",
            description: "This is Adding IconButton",
            child: IconButton(
                onPressed: () {
                  // ShowCaseWidget.of(context).startShowCase(
                  //   [_notifikey, _gamekey, _settingkey, _addkey]);
                },
                icon: const Icon(
                  CupertinoIcons.add_circled_solid,
                  size: 60,
                  color: Color.fromARGB(255, 54, 7, 100),
                )),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
