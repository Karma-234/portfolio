// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/di/locator.dart';
import 'package:portfolio/core/routes/app_router.gr.dart';
import 'package:portfolio/core/service/auth.dart';
import 'package:portfolio/shared_widgets/app_button.dart';
import 'package:portfolio/shared_widgets/input_field.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/utils/password_generator.dart';

import 'package:portfolio/view_model/login/login.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    late final state = LoginState();
    late final authService = locator<AppAuthenticationService>();
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('New user?'),
                TextButton(
                  onPressed: () {
                    generatePassword();
                  },
                  child: const Text('Generate password'),
                )
              ].separate(4.w),
            ),
            Observer(builder: (context) {
              return AppButton(
                isLoading: state.isLoading,
                onPress: () async {
                  state.setLoading(true);
                  final res = await authService.signUp(
                      email: state.email ?? '', password: state.password ?? '');
                  state.setLoading(false);
                  if (res == null) {
                    context.router.popAndPush(const HomeView());
                  }
                },
              );
            })
          ].separate(16.h),
        ),
      ),
    );
  }
}
