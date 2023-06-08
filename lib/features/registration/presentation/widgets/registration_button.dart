import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playgon/res/app_context_extension.dart';
import 'package:playgon/res/ui/button/common_button.dart';
import 'package:playgon/routes/navigation_service.dart';
import 'package:playgon/routes/route_paths.dart';

class RegistrationButton extends ConsumerWidget {
  const RegistrationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonButton(
      buttonText: "Register",
      buttonColor: context.resources.color.colorMain,
      buttonBorderColor: context.resources.color.black,
      onButtonTap: () {
        /// temporary placeholder
        NavigationService.navigateReplaced(RoutePaths.login);
        ///needs actual function and API call
      },
    );
  }
}
