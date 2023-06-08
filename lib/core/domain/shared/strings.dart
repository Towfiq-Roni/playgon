import 'package:flutter/cupertino.dart';

const baseUrl = 'https://dummyjson.com/auth';

String? emailValidator(String? value) {
  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!)) {
    return 'Please enter a valid email address.';
  }
  return null;
}

String? passwordValidator(value) {
  if (value!.isEmpty) {
    return null;
    ///need to figure this out
  // } else if (value != newPasswordController.text) {
  } else if (value != TextEditingController().text) {
    return "Both Password should be same";
  }
  return null;
}