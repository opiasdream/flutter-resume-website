import 'package:flutter/material.dart';
import 'package:resume/models/social_media.dart';
import 'package:resume/ui/widgets/error_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class Functions {
  /// open @url in new tab.
  static Future<void> openUrl(BuildContext context, String url) async {
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      if (context.mounted) {
        ErrorDialog.show(context: context);
      }
    }
  }

  /// convert [Resume.socialMediaUrls] url to [SocialMedia]
  static SocialMedia convertUrlToSocialMedia(String url) =>
      socialMediaPlatforms.firstWhere((_) => url.contains(_.baseUrl),
          orElse: () => socialMediaPlatforms.last);

  /// get image provider by url
  static getImageProvider(String url) {
    if (url.substring(0, 4) != "http") {
      return AssetImage(url);
    } else {
      return NetworkImage(url);
    }
  }
}
