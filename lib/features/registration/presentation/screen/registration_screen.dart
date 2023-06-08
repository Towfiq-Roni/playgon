import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playgon/features/registration/presentation/widgets/registration_button.dart';

class RegistrationScreen extends ConsumerWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          // RegistrationButton(),
        ],
      ),
      bottomNavigationBar: RegistrationButton(),
    );
  }
}
