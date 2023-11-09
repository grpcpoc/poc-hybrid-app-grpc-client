import 'package:flutter/material.dart';

import '../../../dependency_injection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title, required this.container});

  final String title;

  final InjectionContainer container;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int option = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      widget.container.createUserRestScreen,
      widget.container.createUserUnaryScreen,
      widget.container.createUserClientStreamScreen,
      widget.container.createUserServerStreamScreen,
      widget.container.createUserBidirectionalScreen,
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    option = 0;
                  });
                },
                child: const Text("Rest")),
            TextButton(
                onPressed: () {
                  setState(() {
                    option = 1;
                  });
                },
                child: const Text("Unary")),
            TextButton(
                onPressed: () {
                  setState(() {
                    option = 2;
                  });
                },
                child: const Text("Client stream")),
            TextButton(
                onPressed: () {
                  setState(() {
                    option = 3;
                  });
                },
                child: const Text("Server stream")),
            TextButton(
                onPressed: () {
                  setState(() {
                    option = 4;
                  });
                },
                child: const Text("Bidirectional")),
          ],
        ),
        body: SingleChildScrollView(
          child: pages[option],
        ));
  }
}
