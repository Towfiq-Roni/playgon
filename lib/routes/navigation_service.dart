import 'package:flutter/material.dart';
import 'package:playgon/features/splash/presentation/screen/splash_screen.dart';
import 'package:playgon/routes/route_paths.dart';


class NavigationService {
  // static final NavigationService _instance = NavigationService._internal();
  // NavigationService._internal();
  // factory NavigationService() => _instance;

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  BuildContext? getContext() {
    return navigatorKey.currentContext;
  }

  static Future<dynamic> navigateTo(String routeName, {dynamic arguments}) async {
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  static Future<dynamic> navigateReplaced(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  static Future<dynamic> navigateToHome() async {
    Navigator.pushAndRemoveUntil(
      navigatorKey.currentContext!,
      MaterialPageRoute(
        builder: (context) => SplashScreen(),
      ), (Route<dynamic> route) => false,
    );
  }

  static dynamic goBack([dynamic popValue]) {
    return navigatorKey.currentState!.pop(popValue);
  }

  //navigate popUntil a specific route
  static dynamic popUntil(String routeName) {
    return navigatorKey.currentState!.popUntil(ModalRoute.withName(routeName));
  }

  static Future<dynamic> navigateRemoveUntil(String routeName, {dynamic arguments}) async {
    return navigatorKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false, arguments: arguments);
  }

  static void navigateToLoginAndClearStack(Widget widget) {
    navigatorKey.currentState!.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => widget),
            (Route<dynamic> route) => false);
  }
  static Future<void> logoutAndNavigateToLoginScreen() async {
    BuildContext context = navigatorKey.currentContext!;
    Navigator.of(context).pushNamedAndRemoveUntil(
        RoutePaths.login, (Route<dynamic> route) => false);
  }

//replace the new

// void popUntil(){
//   return navigatorKey.currentState!.popUntil((route) => )
// }
}

// import 'package:flutter/material.dart';
//
// class NavigationService {
//   /// Creating the first instance
//   static final NavigationService _instance = NavigationService._internal();
//   NavigationService._internal();
//
//   /// With this factory setup, any time  NavigationService() is called
//   /// within the appication _instance will be returned and not a new instance
//   factory NavigationService() => _instance;
//
//   ///This would allow the app monitor the current screen state during navigation.
//   ///
//   ///This is where the singleton setup we did
//   ///would help as the state is internally maintained
//   final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
//
//   /// For navigating back to the previous screen
//   dynamic goBack([dynamic popValue]) {
//     return navigationKey.currentState?.pop(popValue);
//   }
//
//   /// This allows you to naviagte to the next screen by passing the screen widget
//   Future<dynamic> navigateToScreen(Widget page, {arguments}) async =>
//       navigationKey.currentState?.push(
//         MaterialPageRoute(
//           builder: (_) => page,
//         ),
//       );
//
//   /// This allows you to naviagte to the next screen and
//   /// also replace the current screen by passing the screen widget
//   Future<dynamic> replaceScreen(Widget page, {arguments}) async =>
//       navigationKey.currentState?.pushReplacement(
//         MaterialPageRoute(
//           builder: (_) => page,
//         ),
//       );
//
//   Future<dynamic> navigateTo(String routeName, {dynamic arguments}) async =>
//       navigationKey.currentState?.pushNamed(routeName, arguments: arguments);
//
//   /// Allows you to pop to the first screen to when the app first launched.
//   /// This is useful when you need to log out a user,
//   /// and also remove all the screens on the navigation stack.
//   /// I find this very useful
//   void popToFirst() =>
//       navigationKey.currentState?.popUntil((route) => route.isFirst);
// }
