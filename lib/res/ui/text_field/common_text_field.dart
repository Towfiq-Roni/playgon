import 'package:flutter/material.dart';
import 'package:playgon/res/app_context_extension.dart';
import 'package:playgon/res/measurements/app_measurements.dart';

class CommonTextField extends StatelessWidget {
  late AppMeasurements appMeasurements;

  // final VoidCallback onButtonTap;
  // final String? buttonText;
  // final TextStyle? buttonTextStyle;
  final TextEditingController? textFieldController;
  final Color? textFieldColor;
  final Color? textFieldTextColor;
  final Color? textFieldBorderColor;
  final double? textFieldHeight;
  final double? textFieldWidth;
  final double? textFieldShadow;
  final double? textFieldBorderRadius;
  final bool? textObscure;

  CommonTextField(
      {super.key,
      // required this.onButtonTap,
      // this.buttonText,
      // this.buttonTextStyle,
      this.textFieldController,
      this.textFieldColor,
      this.textFieldTextColor,
      this.textFieldBorderColor,
      this.textFieldHeight,
      this.textFieldWidth,
      this.textFieldShadow,
      this.textFieldBorderRadius,
      this.textObscure});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: textFieldColor ?? context.resources.color.white,
          border: Border.all(
              color: textFieldBorderColor ??
                  textFieldColor ??
                  context.resources.color.blue400)),
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: TextFormField(
          controller: textFieldController ?? TextEditingController(),
          obscureText: textObscure ?? false,
        ),
      ),
    );

    // return GestureDetector(
    //   onTap: onButtonTap,
    //   child: Container(
    //     decoration: BoxDecoration(
    //       color: buttonColor,
    //       borderRadius: BorderRadius.circular(buttonBorderRadius ?? appMeasurements.radius(16)),
    //       border: Border.all(
    //         color: buttonBorderColor ?? buttonColor ?? context.resources.color.blue400
    //       )
    //     ),
    //     height: buttonHeight ?? appMeasurements.sizeByHeight(32),
    //     width: buttonWidth ?? appMeasurements.fullWidth(),
    //     child: Text(
    //       buttonText ?? "Button",
    //       style: buttonTextStyle ??
    //           context.resources.style
    //               .w500s16(buttonTextColor ?? context.resources.color.white),
    //     ),
    //   ),
    // );
  }
}
