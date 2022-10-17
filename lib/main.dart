import 'package:flutter/material.dart';
import 'package:sec_10/page_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: MyHomePage(),
      routes: {
        '/': (context) => const MyHomePage(),
        'x1': (context) => const Make_time()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void select_page(BuildContext ctx, int x) {
    Navigator.of(ctx).pushNamed((x == 0) ? '/' : 'x1' , arguments: {
      'id':'55',
      'name':'amr'
    } );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyHomePage'),
      ),
      body: Center(
        child: InkWell(
          onTap: () => select_page(context, 1),
          child: const Text(
            'Go to page one',
            style: TextStyle(
              fontSize: 29,
            ),
          ),
        ),
      ),
    );
  }
}
