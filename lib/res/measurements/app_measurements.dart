import 'package:flutter/material.dart';

class AppSizes {
  static const double BASIC_SPAN = 16.0;
}

class AppMeasurements {
  final double height;
  final double width;
  late double _aspectRatio;

  AppMeasurements(this.height, this.width) {
    _aspectRatio = (width / 360);

    ///for design file with 360*720 only
  }

  factory AppMeasurements.fromContext(BuildContext context) {
    return AppMeasurements(
      MediaQuery.of(context).size.height,
      MediaQuery.of(context).size.width,
    );
  }

  double _sizeByAspectRatio(double value) {
    return value * _aspectRatio;
  }

  double aspectRatio(double value) {
    return value * _aspectRatio;
  }

  double sizeByHeight(double value) {
    return _sizeByAspectRatio(value);
  }

  double sizeByWidth(double value) {
    return _sizeByAspectRatio(value);
  }

  double textSize(double value) {
    return _sizeByAspectRatio(value);
  }

  double margin(double value) {
    return _sizeByAspectRatio(value);
  }

  double radius(double value) {
    return _sizeByAspectRatio(value);
  }

  double fullWidth() {
    return width;
  }

  @override
  String toString() {
    return "height: $height, width: $width";
  }
}