import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(
        top: 160,
      ),
      onPressed: () {},
      child: Text(
        'Não possui uma conta? Cadraste-se!',
        style: TextStyle(color: Colors.white, fontSize: 14, letterSpacing: 0.5),
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
