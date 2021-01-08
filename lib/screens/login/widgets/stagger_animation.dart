import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({this.controller})
      : butoonSquezze = Tween(begin: 320.0, end: 60.0).animate(
            CurvedAnimation(parent: controller, curve: Interval(0.0, 0.150))),
        butoonZoomOut = Tween(begin: 60.0, end: 1000.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.5, 1.0, curve: Curves.bounceInOut)));

  final Animation<double> butoonSquezze;
  final Animation<double> butoonZoomOut;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Padding(
        padding: EdgeInsets.only(
          bottom: 50,
        ),
        child: InkWell(
          onTap: () {
            controller.forward();
          },
          child: Hero(
            tag: 'marvel',
            child: butoonZoomOut.value <= 60
                ? Container(
                    width: butoonSquezze.value,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 0, 0),
                        shape: BoxShape.rectangle
                        // borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                    child: _buildInside(context))
                : Container(
                    width: butoonZoomOut.value,
                    height: butoonZoomOut.value,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 0, 0),
                        shape: butoonZoomOut.value < 500
                            ? BoxShape.rectangle
                            : BoxShape.rectangle),
                  ),
          ),
        ));
  }

  Widget _buildInside(BuildContext context) {
    if (butoonSquezze.value > 75) {
      return Text(
        'Sign In',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 23.0,
          letterSpacing: 0.3,
        ),
      );
    } else {
      return LinearProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }
}
