import 'package:flutter/material.dart';
import 'package:injectable_app/injection.dart';
import 'package:injectable_app/services/name_service.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key}); // Inject NameService

  final NameService _nameService = getIt<NameService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen - Names')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                final name = _nameService.getRandomName();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Random Name: $name')),
                );
              },
              child: const Text('Get Random Name'),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                final anotherName = _nameService.getAnotherName();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Another Name: $anotherName')),
                );
              },
              child: const Text('Get Another Name'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back to First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
