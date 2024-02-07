import 'package:resume/constants/text_styles.dart';
import 'package:resume/helpers/functions.dart';
import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({super.key, required this.url, this.isOnlyIcon});

  final String url;
  final bool? isOnlyIcon;

  @override
  Widget build(BuildContext context) {
    final socialMedia = Functions.convertUrlToSocialMedia(url);
    return (isOnlyIcon ?? false)
        ? IconButton(
            onPressed: () => Functions.openUrl(context, url),
            tooltip: socialMedia.name,
            icon: Image.asset(socialMedia.path,
                width: 15, height: 15, color: Colors.white))
        : TextButton.icon(
            onPressed: () => Functions.openUrl(context, url),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => socialMedia.color)),
            icon: Image.asset(socialMedia.path,
                width: 15, height: 15, color: Colors.white),
            label: Text(socialMedia.name, style: normal));
  }
}
