import 'package:flutter/material.dart';
import 'package:playgon/res/resources.dart';

extension AppContext on BuildContext {
  Resources get resources => Resources.of(this);
}