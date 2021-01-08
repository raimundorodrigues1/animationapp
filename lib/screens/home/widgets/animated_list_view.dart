import 'package:animationapp/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: 'Capitão América',
          subtitle: 'O primeiro vingador (2011)',
          image: AssetImage('lib/imagens/6.jpg'),
          margin: listSlidePosition.value * 6,
        ),
        ListData(
          title: 'The Avengers',
          subtitle: 'Os Vingadores (2012)',
          image: AssetImage('lib/imagens/5.jpg'),
          margin: listSlidePosition.value * 5,
        ),
        ListData(
          title: 'Capitão América 2',
          subtitle: 'O Soldado Invernal (2014)',
          image: AssetImage('lib/imagens/4.jpg'),
          margin: listSlidePosition.value * 4,
        ),
        ListData(
          title: 'Vingadores',
          subtitle: 'Era de Ultron (2015)',
          image: AssetImage('lib/imagens/3.jpg'),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: 'Capitão América 3',
          subtitle: 'Guerra Civil (2016)',
          image: AssetImage('lib/imagens/2.jpg'),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: 'Vingadores',
          subtitle: 'Guerra Infinita (2018)',
          image: AssetImage('lib/imagens/1.jpg'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: 'Vingadores',
          subtitle: 'Ultimato (2019)',
          image: AssetImage('lib/imagens/0.jpg'),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
