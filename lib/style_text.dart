import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  final String text;
  const StyleText({
    super.key,  required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 30),
    );
  }
}
