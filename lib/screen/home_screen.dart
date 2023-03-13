import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_go/layout/default_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              context.go('/one');
            },
            child: const Text('Single'),
          )
        ],
      ),
    );
  }
}
