import 'package:flutter/material.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';


class ElevatedNeoPop extends StatelessWidget {
  final Color color;
  final VoidCallback onTapUp;
  final VoidCallback onTapDown;
  final EdgeInsets padding;
  final String label;
  final TextStyle? textStyle;

  const ElevatedNeoPop({
    Key? key,
    required this.color,
    required this.onTapUp,
    required this.onTapDown,
    required this.padding,
    required this.label,
    this.textStyle, required VoidCallback onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeoPopButton(
      color: color,
      onTapUp: onTapUp,
      onTapDown: onTapDown,
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label, style: textStyle),
          ],
        ),
      ),
    );
  }
}
