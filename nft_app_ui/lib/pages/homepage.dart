import 'package:flutter/material.dart';
import 'package:nft_app_ui/components/Bottombar.dart';
import 'package:nft_app_ui/components/tabbart.dart';
import 'package:nft_app_ui/tabs/recent_tab.dart';
import 'package:nft_app_ui/theme/glass_box.dart';
import '../components/appbar.dart';
import '../tabs/top_tab.dart';
import '../tabs/trending_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //search button tapped
  void _searchButtonTapped() {}
  //out 3 tb options
  List tabOptions = [
    ['Recent', RecentTap()],
    ['Trending', TrendingTab()],
    ['Top', TopTab()],
  ];
//Bottom bar Navigation
  int _currentBottomIndex = 0;
  void _handLeBottomIndexChange(int? index) {
    setState(() {
      print(tabOptions);
      print(index);
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentBottomIndex,
            onTap: _handLeBottomIndexChange,
          ),
        ),
        backgroundColor: Colors.grey.shade400,
        body: ListView(
          children: [
            //app bar+ search button
            MyAppBar(
              onTap: _searchButtonTapped,
              title: "Expore Collections",
            ),
            //tab bar
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabOptions: tabOptions,
              ),
            )
          ],
        ),
      ),
    );
  }
}
