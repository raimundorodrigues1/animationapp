import 'package:animationapp/screens/home/widgets/animated_list_view.dart';
import 'package:animationapp/screens/home/widgets/home_top.dart';
import 'package:animationapp/screens/home/widgets/marvel_container.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({@required this.controller})
      : containerGrow = CurvedAnimation(parent: controller, curve: Curves.ease),
        listSlidePosition = EdgeInsetsTween(
                begin: EdgeInsets.only(bottom: 0),
                end: EdgeInsets.only(bottom: 80))
            .animate(CurvedAnimation(
                parent: controller,
                curve: Interval(0.325, 0.8, curve: Curves.ease))),
        marvelAnimation = ColorTween(
                begin: Color.fromRGBO(255, 0, 0, 1),
                end: Color.fromRGBO(255, 0, 0, 0))
            .animate(CurvedAnimation(
                parent: controller, curve: Curves.easeInOutQuart));

  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;
  final Animation<Color> marvelAnimation;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.zero,
          children: [
            HomeTop(containerGrow: containerGrow),
            AnimatedListView(
              listSlidePosition: listSlidePosition,
            )
          ],
        ),
        IgnorePointer(
          child: MarvelContainer(
            marvelAnimation: marvelAnimation,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }
}
