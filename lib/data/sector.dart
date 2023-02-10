import 'package:flutter/material.dart';

class Sector {
  final Color color;
  final double value;
  final String title;

  Sector({required this.color, required this.value, required this.title});
}

List<Sector> get industrySectors {
  List<Sector> result = <Sector>[];
  for (int i = 0; i <= 19; i++) {
    result.add(
      Sector(
        color: Colors.redAccent,
        value: 100,
        title: 'Information Technology'
      )
    );
  }
  return result;
}
