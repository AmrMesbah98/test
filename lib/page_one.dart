import 'package:flutter/material.dart';

class Make_time extends StatelessWidget {
  const Make_time({super.key});

  @override
  Widget build(BuildContext context) {
    final routepage =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Page_one'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                '${routepage['name']}',
                style: const TextStyle(fontSize: 28),
              ),
              Text(
                '${routepage['id']}',
                style: const TextStyle(fontSize: 28),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
