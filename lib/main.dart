import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playgon/core/domain/extensions/logger/riverpod_logger.dart';
import 'package:playgon/features/splash/presentation/screen/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // bootstrap(() => AppRepositoryProvider());
  runApp(
      ProviderScope(
    observers: [
      RiverPodLogger()
    ],
      child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlayGon',
      // navigatorKey: ,
      // onGenerateRoute: ,
      // localizationsDelegates: ,
      // supportedLocales: ,
      // locale: ,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
