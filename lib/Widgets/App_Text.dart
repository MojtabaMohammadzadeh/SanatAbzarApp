import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppText({Key? key,
    this.size = 18,
    required this.text,
    this.color = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.normal,
        shadows: [
          Shadow(
            color: Colors.black.withOpacity(0.8),
            offset: Offset(1,2),
            blurRadius: 5,


          ),
        ],
      ),
    );
  }
}
