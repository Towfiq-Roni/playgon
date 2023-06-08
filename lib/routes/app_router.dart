import 'dart:io';
import 'package:flutter/material.dart';
import 'package:playgon/features/homepage/presentation/screen/homepage_screen.dart';
import 'package:playgon/features/splash/presentation/screen/splash_screen.dart';
import 'package:playgon/routes/route_paths.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    Widget widget;

    switch (settings.name) {
      case RoutePaths.splash:
        widget = const SplashScreen();
        break;
      // case RoutePaths.welcome:
      //   widget = const WelcomeScreen();
      //   break;
      // case RoutePaths.otp:
      //   widget = OtpScreen(settings.arguments as String?);
      //   break;
      // case RoutePaths.profile:
      //   widget = const ProfileScreen();
      //   break;
      // case RoutePaths.authWebView:
      //   widget = const AuthWebView();
      //   break;
      // case RoutePaths.snsScreen:
      //   widget = const SNSLinkingScreen();
      //   break;
      case RoutePaths.homepage:
        widget = const HomepageScreen();
        break;
      // case RoutePaths.save:
      //   widget = const SavedScreen();
      //   break;
      // case RoutePaths.progress:
      //   widget = const ProgressScreen();
      //   break;
    // case RoutePaths.map:
    //   widget = const MapScreen();
    //   break;
    //   case RoutePaths.mapSearch:
    //     widget = const MapSearchScreen();
    //     break;
    // case RoutePaths.qRCodeDetailsView:
    //   widget = const QRCodeDetailsView();
    //   break;
    // case RoutePaths.successScreen:
    //   widget = SuccessScreen(arguments: settings.arguments as SuccessScreenArguments,);
    //   break;
    // case RoutePaths.profileUpdateScreen:
    //   widget = const ProfileUpdateView();
    //   break;
    // case RoutePaths.registration:
    //   widget = RegistrationScreen(arguments: settings.arguments as RegistrationArguments);
    //   break;
    // case RoutePaths.landingScreen:
    //   widget = LandingView(arguments: settings.arguments as LandingViewArguments);
    //   break;
    // case RoutePaths.phoneNumberEntryScreen:
    //   widget = PhoneNumberEntryScreen(arguments: settings.arguments as OTPArguments,);
    //   break;
    // case RoutePaths.otpScreen:
    //   widget = OtpVerificationView(arguments: settings.arguments as OTPArguments,);
    //   break;
    // case RoutePaths.helpScreen:
    //   widget =  HelpScreen();
    //   break;
    // case RoutePaths.feedbackScreen:
    //   widget =  FeedbackScreen();
    //   break;
    // case RoutePaths.instructionScreen:
    //   widget =  InstructionScreen();
    //   break;
    //   case RoutePaths.productGuideLineScreen:
    //   widget =  ProductGuideLineScreen();
    //   break;
    //   case RoutePaths.resourceScreen:
    //   widget =  ResourceListScreen();
    //   break;
    // case RoutePaths.resourceDetailsScreen:
    //   widget =  ResourceDetailsScreen(arguments: settings.arguments as ResourceDetailsArguments);
    //   break;
    // case RoutePaths.pdfViewScreen:
    //   widget =  PDFViewScreen();
    //   break;
    // case RoutePaths.userDataJourney:
    //   widget = UserDataJourney(
    //     arguments: settings.arguments as UserDataArguments,);
    //   break;
    // case RoutePaths.userPersonalInfo:
    //   widget = PersonalInfoWidget(
    //     arguments: settings.arguments as UserInfoArguments,);
    //   break;
    // case RoutePaths.userWorkshopInfo:
    //   widget = WorkshopInfoWidget(
    //     arguments: settings.arguments as UserInfoArguments,
    //   );
    //   break;
    // case RoutePaths.userAccountInfo:
    //   widget = AccountInfoWidget(
    //     arguments: settings.arguments as UserInfoArguments,
    //   );
    //   break;
    // case RoutePaths.userPassword:
    //   widget = PasswordSetWidget(
    //     arguments: settings.arguments as PasswordSetArguments,
    //   );
    //   break;
    // case RoutePaths.login:
    //   widget = LoginView();
    //   break;
    // case RoutePaths.profileScreen:
    //   widget = ProfileView();
    //   break;
    // case RoutePaths.qrListView:
    //   widget = QRListView();
    //   break;
    // case RoutePaths.commonFailure:
    //   widget = CommonFailureScreen(arguments: settings.arguments as FailureScreenArguments);
    //   break;
    // case RoutePaths.qrScanSuccess:
    //   widget = QRScanSuccessScreen(arguments: settings.arguments as SuccessScreenArguments);
    //   break;
    // case RoutePaths.brandWiseProductsScreen:
    //   widget = BrandWiseProductsView();
    //   break;
    // case RoutePaths.timelineView:
    //   widget = const TimelineView();
    //   break;
    // case RoutePaths.timelineDetailsView:
    //   widget = TimelineDetailsView(arguments: settings.arguments as TimelineDetailsArguments);
    //   break;
    //   case RoutePaths.rewardHistory:
    //   widget = const RewardHistory();
    //   break;
    // case RoutePaths.campaignTimeline:
    //   widget = const CampaignTimelineView();
    //   break;
    // case RoutePaths.targetTimelineView:
    //   widget = const TargetDetailsView();
    //   break;
    // case RoutePaths.targetView:
    //   widget = const TargetView();
    //   break;
    // case RoutePaths.successFailureDetails:
    //   widget = const SuccessFailureDetailsView();
    //   break;
      default:
        return MaterialPageRoute(
          builder: (context) => Container(),
        );
    }

    if (Platform.isIOS) {
      return MaterialPageRoute(
        builder: (context) {
          return WillPopScope(
            onWillPop: () => _onPop(context),
            child: widget,
          );
        },
        settings:
        RouteSettings(name: settings.name, arguments: settings.arguments),
      );
    }

    return _createRoute(settings, widget);
  }

  static Route _createRoute(final RouteSettings settings, final widget) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static Future<bool> _onPop(BuildContext context) async {
    if (Navigator.of(context).userGestureInProgress) {
      return Future<bool>.value(false);
    }
    return Future<bool>.value(true);
  }
}
