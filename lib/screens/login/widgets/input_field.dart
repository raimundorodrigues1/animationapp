import 'dart:ui';

import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;

  InputField({this.hint, this.obscure, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Colors.white, width: 1.0),
      )),
      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            contentPadding: EdgeInsets.only(
              top: 30,
              right: 30,
              bottom: 20,
              left: 5,
            )),
      ),
    );
  }
}
