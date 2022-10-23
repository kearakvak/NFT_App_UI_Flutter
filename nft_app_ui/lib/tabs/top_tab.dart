// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:nft_app_ui/components/nft_card.dart';

class TopTab extends StatelessWidget {
  const TopTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NFT_Card(
      imagePhth: 'assets/images/unnamed.jpg',
    );
  }
}
