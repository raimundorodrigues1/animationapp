import 'package:animationapp/screens/home/widgets/category_view.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrow;

  HomeTop({@required this.containerGrow});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;

    return Container(
      height: screensize.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('lib/imagens/end1.jpg'), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Bem-Vindo, Capitão!',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              width: containerGrow.value * 120,
              height: containerGrow.value * 120,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('lib/imagens/captain_american.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                  width: containerGrow.value * 30,
                  height: containerGrow.value * 30,
                  margin: EdgeInsets.only(left: 80),
                  alignment: Alignment.center,
                  child: Text(
                    '6',
                    style: TextStyle(
                        fontSize: containerGrow.value * 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 255, 0, 0))),
            ),
            CategoryView()
          ],
        ),
      ),
    );
  }
}
