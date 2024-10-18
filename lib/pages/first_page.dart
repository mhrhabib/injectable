import 'package:flutter/material.dart';
import 'package:injectable_app/injection.dart';

import '../services/number_service.dart';

class FirstPage extends StatelessWidget {
  final NumberService _numberService = getIt<NumberService>();

  FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen - Numbers')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                final number = _numberService.getRandomNumber();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Random Number: $number')),
                );
              },
              child: const Text('Get Random Number'),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                final anotherNumber = _numberService.getAnotherRandomNumber();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Another Random Number: $anotherNumber')),
                );
              },
              child: const Text('Get Another Random Number'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/second'),
              child: const Text('Go to Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
