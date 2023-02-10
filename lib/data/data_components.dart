import 'dart:math';
import 'package:collection/collection.dart';

class DataComponents {
  final double x;
  final double y;

  DataComponents({required this.x, required this.y});
}

List<DataComponents> get pricePoints {
  final Random random = Random();
  final randomNumbers = <double>[];
  for (var i = 0; i <= 11; i++) {
    randomNumbers.add(random.nextDouble());
  }

  return randomNumbers
      .mapIndexed(
          (index, element) => DataComponents(x: index.toDouble(), y: element))
      .toList();
}
