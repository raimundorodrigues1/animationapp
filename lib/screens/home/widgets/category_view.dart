import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ['FILMES', 'DESENHOS', 'QUADRINHOS'];

  int _category = 0;

  void selectForward() {
    setState(() {
      _category++;
    });
  }

  void selectBackward() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color.fromARGB(255, 255, 0, 0),
          disabledColor: Colors.grey,
          onPressed: _category > 0 ? selectBackward : null,
        ),
        Text(
          categories[_category].toUpperCase(),
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.2,
              color: Colors.white),
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          color: Color.fromARGB(255, 255, 0, 0),
          disabledColor: Colors.grey,
          onPressed: _category < categories.length - 1 ? selectForward : null,
        )
      ],
    );
  }
}
