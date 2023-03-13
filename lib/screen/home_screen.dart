import 'package:flutter/material.dart';
import 'package:my_go/layout/default_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        title: "Home",
        body: Column(
          children: const [],
        ));
  }
}
