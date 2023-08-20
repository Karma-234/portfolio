import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/shared_widgets/app_button.dart';
import 'package:portfolio/shared_widgets/input_field.dart';
import 'package:portfolio/utils/extensions.dart';

import 'package:portfolio/view_model/login/login.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    late final state = LoginState();
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
            Observer(builder: (context) {
              return AppButton(
                onPress: () {},
              );
            })
          ].separate(16.h),
        ),
      ),
    );
  }
}
