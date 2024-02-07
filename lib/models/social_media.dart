import 'dart:ui';

/// It is a model class for social media platforms and connection channels.
/// @param name - The name of the social media platform.
/// @param color - The color of the social media platform.
/// @param path - The path to the image of the social media platform.
/// @param baseUrl - The base URL of the social media platform.
/// @returns A SocialMedia object.
/// supported platforms: [socialMediaPlatforms]
class SocialMedia {
  String name;
  Color color;
  String path;
  String baseUrl;
  SocialMedia({
    required this.name,
    required this.color,
    required this.path,
    required this.baseUrl,
  });
}

List<SocialMedia> socialMediaPlatforms = [
  SocialMedia(
      name: "Twitter",
      color: const Color(0xff1DA1F2),
      path: "assets/social_media/twitter.png",
      baseUrl: "twitter.com"),

  SocialMedia(
      name: "Instagram",
      color: const Color(0xffC13584),
      path: "assets/social_media/instagram.png",
      baseUrl: "instagram.com"),

  SocialMedia(
      name: "LinkedIn",
      color: const Color(0xff0077B5),
      path: "assets/social_media/linkedin.png",
      baseUrl: "linkedin.com"),

  SocialMedia(
      name: "Medium",
      color: const Color(0xff00AB6C),
      path: "assets/social_media/medium.png",
      baseUrl: "medium.com"),

  SocialMedia(
      name: "Email",
      color: const Color(0xff333333),
      path: "assets/social_media/email.png",
      baseUrl: "mailto:"),

  SocialMedia(
      name: "GitHub",
      color: const Color(0xff333333),
      path: "assets/social_media/github.png",
      baseUrl: "github.com"),

  SocialMedia(
      name: "Discord",
      color: const Color(0xff7289DA),
      path: "assets/social_media/discord.png",
      baseUrl: "https://discord.gg/"),

  SocialMedia(
      name: "App Store",
      color: const Color(0xff333333),
      path: "assets/social_media/app_store.png",
      baseUrl: "apps.apple.com"),

  SocialMedia(
      name: "Play Store",
      color: const Color(0xff333333),
      path: "assets/social_media/play_store.png",
      baseUrl: "example.com"), // TODO: fix baseurl

  // default
  SocialMedia(
      name: "Website",
      color: const Color(0xff333333),
      path: "assets/social_media/website.png",
      baseUrl: "example.com"),
];
