// lib/services/number_service.dart
import 'dart:math';
import 'package:injectable/injectable.dart';

// @injectable : Regular injection, a new instance is created every time
// @signleton : A signle instance created and shared
// @lazySingleton : A signle instance is created when it is first accessed

@lazySingleton
class NumberService {
  final Random _random = Random();

  int getRandomNumber() {
    return _random.nextInt(100); // Returns a random number between 0 and 99
  }

  int getAnotherRandomNumber() {
    return _random.nextInt(200); // Returns a random number between 0 and 199
  }
}
