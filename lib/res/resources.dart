import 'package:flutter/material.dart';
import 'package:playgon/res/colors/app_colors.dart';
import 'package:playgon/res/dimensions/app_dimensions.dart';
import 'package:playgon/res/drawables/app_drawables.dart';
import 'package:playgon/res/strings/strings.dart';
import 'package:playgon/res/styles/app_styles.dart';

class Resources {

  final BuildContext _context;
  Resources(this._context);

  Strings? get strings {
    return Localizations.of<Strings>(_context, Strings);
  }

  AppColors get color {
    return AppColors();
  }

  AppDimension get dimension {
    return AppDimension();
  }

  AppTextStyle get style {
    return AppTextStyle();
  }

  AppDrawable get drawable {
    return AppDrawable();
  }

  static Resources of(BuildContext context){
    return Resources(context);
  }
}