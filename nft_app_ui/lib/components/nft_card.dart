import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NFT_Card extends StatelessWidget {
  const NFT_Card({required this.imagePhth, super.key});
  final String imagePhth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.asset(
          imagePhth,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
