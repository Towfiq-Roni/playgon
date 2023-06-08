import 'package:flutter/material.dart';
import 'package:playgon/res/app_context_extension.dart';
import 'package:playgon/res/measurements/app_measurements.dart';

class CommonButton extends StatelessWidget {

  late AppMeasurements appMeasurements;

  final VoidCallback onButtonTap;
  final String? buttonText;
  final TextStyle? buttonTextStyle;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final Color? buttonBorderColor;
  final double? buttonHeight;
  final double? buttonWidth;
  final double? buttonShadow;
  final double? buttonBorderRadius;

  CommonButton({
    super.key,
    required this.onButtonTap,
    this.buttonText,
    this.buttonTextStyle,
    this.buttonColor,
    this.buttonTextColor,
    this.buttonBorderColor,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonShadow,
    this.buttonBorderRadius
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onButtonTap,
      child: Container(
        decoration: BoxDecoration(
            color: buttonColor ?? context.resources.color.white,
            borderRadius: BorderRadius.circular(buttonBorderRadius ?? appMeasurements.radius(16)),
            border: Border.all(
                color: buttonBorderColor ?? buttonColor ?? context.resources.color.blue400
            )
        ),
        height: buttonHeight ?? appMeasurements.sizeByHeight(32),
        width: buttonWidth ?? (appMeasurements.fullWidth() * 0.9),
        child: Text(
          buttonText ?? "Button",
          style: buttonTextStyle ??
              context.resources.style
                  .w500s16(buttonTextColor ?? context.resources.color.black),
        ),
      ),
    );
  }
}
