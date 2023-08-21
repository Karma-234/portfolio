import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/app_function.dart';
import 'app_text.dart';

class DetailsWidget extends StatelessWidget {
  final String title;
  final String? description;
  final String url;
  final IconData? icon;
  final VoidCallback? onTap;
  const DetailsWidget({
    super.key,
    this.title = '',
    this.onTap,
    this.url = '',
    this.icon,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon ?? FontAwesomeIcons.rProject,
      ),
      onTap: onTap ??
          () {
            appLaunchUrl(url);
          },
      title: AppText(
        text: title,
      ),
      subtitle: AppText(
        text: description ?? 'Tap to open live project',
        size: 12,
        height: 15,
        weight: FontWeight.w400,
      ),
    );
  }
}
