import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playgon/res/app_context_extension.dart';

class AppName extends StatelessWidget {
  const AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "PLAYG",
        style: GoogleFonts.caesarDressing(
            color: context.resources.color.black, fontSize: 48),
        children: <TextSpan>[
          TextSpan(
            text: "O",
            style: GoogleFonts.caesarDressing(
                color: context.resources.color.green600,
                fontSize: 48),
          ),
          TextSpan(
            text: "N",
            style: GoogleFonts.caesarDressing(
                color: context.resources.color.black, fontSize: 48),
          ),
        ],
      ),
    );
  }
}
