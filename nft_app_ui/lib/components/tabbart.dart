import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({required this.tabOptions, super.key});

  final List tabOptions;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //tab bar
        TabBar(
          unselectedLabelColor: Colors.red.shade400,
          labelColor: Colors.blue.shade400,
          tabs: [
            Text(tabOptions[0][0]),
            Text(tabOptions[1][0]),
            Text(tabOptions[2][0]),
          ],
        ),
        //tab view
        Expanded(
          child: TabBarView(
            children: [
              tabOptions[0][1],
              tabOptions[1][1],
              tabOptions[2][1],
            ],
          ),
        ),
      ],
    );
  }
}
