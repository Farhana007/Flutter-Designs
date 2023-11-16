import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomTabbar extends StatefulWidget {
  @override
  State<CustomTabbar> createState() => _CustomTabbarState();
}

class _CustomTabbarState extends State<CustomTabbar> {
  List<Widget> _tabScreenList = [
   //your tab path here
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    dividerColor: Colors.white,
                    indicator: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    tabs: [
                      Tab(
                        text: 'On Going',
                      ),
                      Tab(
                        text: 'Requested',
                      ),
                      Tab(
                        text: 'Completed',
                      ),
                    ],
                  )
                      .box
                      .height(50)
                      .color(Colors.white)
                      .roundedLg
                      .border(color: Colors.grey.withOpacity(0.3))
                      .make(),
                  const SizedBox(height: 30),
                  Expanded(
                    child: TabBarView(
                      children: _tabScreenList,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
