import 'package:flutter/material.dart';
import 'package:playgon/features/splash/presentation/widgets/app_name.dart';
import 'package:playgon/res/app_context_extension.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.resources.color.colorPrimary,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(context.resources.drawable.splashImage),
            const AppName(),
          ],
        ),
      ),
    );
  }
}
