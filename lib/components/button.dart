import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const dark = Color.fromRGBO(82, 82, 82, 1);
  static const defaultColor = Color.fromRGBO(112, 112, 112, 1);
  static const operationColor = Color.fromRGBO(250, 158, 13, 1);
  final String text;
  final bool isBig;
  final Color color;
  final void Function(String) cb;

  const Button(
      {super.key,
      required this.text,
      this.isBig = false,
      this.color = defaultColor,
      required this.cb});
  const Button.big(
      {super.key,
      required this.text,
      this.isBig = true,
      this.color = defaultColor,
      required this.cb});
  const Button.operation(
      {super.key,
      required this.text,
      this.isBig = false,
      this.color = operationColor,
      required this.cb});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isBig ? 2 : 1,
      child: FilledButton(
        style: FilledButton.styleFrom(
            backgroundColor: color,
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        onPressed: () => cb(text),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
