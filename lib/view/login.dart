import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/shared_widgets/input_field.dart';
import 'package:portfolio/utils/extensions.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              textAlign: TextAlign.center,
            ),
            const AppInputField(
              hint: 'Enter email',
              header: 'Email',
            ),
            const AppInputField(
              hint: 'Enter password',
              header: 'Password',
            ),
          ].separate(16.h),
        ),
      ),
    );
  }
}
