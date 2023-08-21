// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/di/locator.dart';
import 'package:portfolio/core/routes/app_router.gr.dart';
import 'package:portfolio/core/service/auth.dart';
import 'package:portfolio/shared_widgets/app_button.dart';
import 'package:portfolio/shared_widgets/app_text.dart';
import 'package:portfolio/shared_widgets/input_field.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/utils/password_generator.dart';

import 'package:portfolio/view_model/login/login.dart';
import 'package:portfolio/widgets/login.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _controller;
  late final state = LoginState();
  late final authService = locator<AppAuthenticationService>();
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText.xl(
                text: 'Welcome',
                align: TextAlign.center,
                color: const Color.fromARGB(255, 30, 116, 187)),
            ReusableTab(
              controller: _tabController,
              onTap: (v) => state.setTab(v),
            ),
            AppInputField(
              hint: 'Enter email',
              header: 'Email',
              onChanged: (value) => state.setEmail(value ?? ''),
            ),
            AppInputField(
              hint: 'Enter password',
              header: 'Password',
              controller: _controller,
              onChanged: (value) => state.setPassword(value),
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.copy,
                  color: Colors.blue,
                ),
                onPressed: () {
                  final data = ClipboardData(text: _controller.text);
                  Clipboard.setData(data);
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: AppText(text: 'Password copied to clipboard!')));
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('New user?'),
                TextButton(
                  onPressed: () {
                    _controller.text = generatePassword();
                  },
                  child: const Text('Generate password'),
                )
              ],
            ),
            Observer(builder: (context) {
              return AppButton(
                isLoading: state.isLoading,
                onPress: () {
                  _performAuth(context, state);
                },
              );
            })
          ].separate(16.h),
        ),
      ),
    );
  }
}

Future<void> _performAuth(BuildContext context, LoginState state) async {
  await state.authentiacte(
      index: state.tabIndex, service: locator<AppAuthenticationService>());
  if (state.error == null) {
    context.router.popAndPush(const HomeView());
  } else {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: AppText(text: state.error ?? '')));
  }
}
