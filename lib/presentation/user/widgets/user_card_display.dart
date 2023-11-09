import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDisplay extends StatelessWidget {
  final List<Widget> userCards;

  final String title;

  const CardDisplay({super.key, required this.title, required this.userCards});

  @override
  Widget build(BuildContext context) {
    if (userCards.isEmpty) {
      return const Row(children: []);
    }
    var aspectRatio =
        MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1.4);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(title)
        ),
        GridView.count(
            crossAxisCount: 3,
            childAspectRatio: aspectRatio,
            shrinkWrap: true,
            children: userCards)
      ],
    );
  }
}
