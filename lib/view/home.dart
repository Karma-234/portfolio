import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/shared_widgets/app_text.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: const Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppText(
              text: 'Welcome Home',
            ),
          ],
        ),
      ),
    );
  }
}
