// lib/services/name_service.dart
import 'package:injectable/injectable.dart';

@lazySingleton
class NameService {
  final List<String> _names = ['Alice', 'Bob', 'Charlie', 'Diana', 'Eve'];

  String getRandomName() {
    _names.shuffle();
    return _names.first; 
  }

  String getAnotherName() {
    _names.shuffle();
    return _names.last; 
  }
}
