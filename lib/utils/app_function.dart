import 'package:url_launcher/url_launcher.dart';

appLaunchUrl(String url) {
  launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
}
