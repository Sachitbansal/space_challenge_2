import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About(
      this.content,
      ) : super();

  final String content;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      textAlign: TextAlign.justify,
    );
  }
}