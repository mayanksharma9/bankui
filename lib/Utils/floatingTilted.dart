import 'package:flutter/material.dart';
import 'package:neopop/widgets/buttons/neopop_tilted_button/neopop_tilted_button.dart';


class FloatingTiltedButton extends StatelessWidget {
  final bool isFloating;
  final VoidCallback onTapUp;
  final VoidCallback onTapDown;
  final NeoPopTiltedButtonDecoration decoration;
  final EdgeInsets padding;
  final String svgAssetPath;
  final String label;
  final TextStyle? textStyle;

  const FloatingTiltedButton({
    Key? key,
    required this.isFloating,
    required this.onTapUp,
    required this.onTapDown,
    required this.decoration,
    required this.padding,
    required this.svgAssetPath, 
    required this.label, 
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeoPopTiltedButton(
      isFloating: isFloating,
      onTapUp: onTapUp,
      onTapDown: onTapDown,
      decoration: decoration,
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label, style: textStyle),
          ],
        ),
        //child: SvgPicture.asset(svgAssetPath),
      ),
    );
  }
}
