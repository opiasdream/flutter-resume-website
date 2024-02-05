import 'package:resume/constants/text_styles.dart';
import 'package:resume/data/social_media_platforms.dart';
import 'package:resume/models/social_media.dart';
import 'package:resume/widgets/error_dialog.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({super.key, required this.url, this.isSquare});

  final String url;

  final bool? isSquare;

  Future<void> _onPressed(BuildContext context) async {
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      if (context.mounted) {
        ErrorDialog.show(context: context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    SocialMedia socialMedia = socialMediaPlatforms.firstWhere(
        (_) => url.contains(_.baseUrl),
        orElse: () => socialMediaPlatforms.last);

    return (isSquare ?? false)
        ? IconButton(
            onPressed: () => _onPressed(context),
            tooltip: socialMedia.name,
            icon: Image.asset(socialMedia.path,
                width: 15, height: 15, color: Colors.white))
        : TextButton.icon(
            onPressed: () => _onPressed(context),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => socialMedia.color)),
            icon: Image.asset(socialMedia.path,
                width: 15, height: 15, color: Colors.white),
            label: Text(socialMedia.name, style: normal));
  }
}
