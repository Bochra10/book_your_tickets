import 'package:flutter/material.dart';

class ThickCircle extends StatelessWidget {
  final bool noColor;
  const ThickCircle({Key? key, required this.noColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              width: 2.5,
              color: noColor ? Colors.white : const Color(0xff8accf7))),
    );
  }
}
