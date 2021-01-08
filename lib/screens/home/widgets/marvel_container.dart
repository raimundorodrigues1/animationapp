import 'package:flutter/material.dart';

class MarvelContainer extends StatelessWidget {
  final Animation<Color> marvelAnimation;
  MarvelContainer({@required this.marvelAnimation});

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: 'marvel',
        child: Container(
          decoration: BoxDecoration(color: marvelAnimation.value),
        ));
  }
}
