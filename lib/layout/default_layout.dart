// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DefaultLayout extends StatelessWidget {
  Widget body;
  DefaultLayout({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(router.location),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: body,
      ),
    );
  }
}
