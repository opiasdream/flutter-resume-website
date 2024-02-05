import 'dart:ui';

import 'package:resume/models/social_media.dart';

List<SocialMedia> socialMediaPlatforms = [
  // twitter
  SocialMedia(
      name: "Twitter",
      color: const Color(0xff1DA1F2),
      path: "assets/social_media/twitter.png",
      baseUrl: "twitter.com"),

  // instagram
  SocialMedia(
      name: "Instagram",
      color: const Color(0xffC13584),
      path: "assets/social_media/instagram.png",
      baseUrl: "instagram.com"),

  // linkedin
  SocialMedia(
      name: "LinkedIn",
      color: const Color(0xff0077B5),
      path: "assets/social_media/linkedin.png",
      baseUrl: "linkedin.com"),

  // medium
  SocialMedia(
      name: "Medium",
      color: const Color(0xff00AB6C),
      path: "assets/social_media/medium.png",
      baseUrl: "medium.com"),

  // email
  SocialMedia(
      name: "Email",
      color: const Color(0xffEA4335),
      path: "assets/social_media/email.png",
      baseUrl: "mailto:"),

  // github
  SocialMedia(
      name: "GitHub",
      color: const Color(0xff333333),
      path: "assets/social_media/github.png",
      baseUrl: "github.com"),

  // discord
  SocialMedia(
      name: "Discord",
      color: const Color(0xff7289DA),
      path: "assets/social_media/discord.png",
      baseUrl: "https://discord.com/"),

  // app store
  SocialMedia(
      name: "App Store",
      color: const Color(0xff333333),
      path: "assets/social_media/app_store.png",
      baseUrl: "apps.apple.com"),

  // play store
  SocialMedia(
      name: "Play Store",
      color: const Color(0xff333333),
      path: "assets/social_media/play_store.png",
      baseUrl: "example.com"), // TODO: fix baseurl

  // website
  SocialMedia(
      name: "Website",
      color: const Color(0xff333333),
      path: "assets/social_media/website.png",
      baseUrl: "example.com"),
];
