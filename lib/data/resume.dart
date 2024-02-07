import 'package:resume/models/project.dart';

/// lib/data/resume.dart
/// resume data.
final class Resume {
  Resume._();

  static const String aboutMe =
      "I'm Enes, a Flutter Developer.\nI specialize in developing websites and hybrid mobile applications.";

  static const List<String> socialMediaUrls = [
    "https://www.linkedin.com/in/opias/",
    "https://github.com/opiasdream",
    "https://discord.gg/hvtNkNEsTv",
    "mailto:opiasdream@protonmail.com",
  ];

  static List<Project> projects = [
    Project(
        title: "Opifer",
        subtitle: "Manage Your ApartHotels",
        description:
            "opifer is a management tool that accelerates the workflow of boutique and apart hotels. It allows you to conveniently manage your rooms and reservations, keep your financial records.",
        coverUrl: "assets/projects/opifer/app_cover.png",
        iconUrl: "assets/projects/opifer/app_icon.png",
        projectMediaLinks: [
          "https://opifer.org/",
          "https://apps.apple.com/tr/app/opifers/id6449856597",
        ]),
    Project(
        title: "Artevo",
        subtitle: "Daily Aesthetic Selections",
        description:
            "Every day one should at least hear one little song, read one good poem, see one fine painting and -- if at all possible -- speak a few sensible words.",
        coverUrl:
            "https://upload.wikimedia.org/wikipedia/commons/a/a7/A_Mountain_Landscape_With_An_Approaching_Storm_by_Claude-Joseph_Vernet.jpg",
        iconUrl:
            "https://artevoapp.github.io/content/image/enyp0rf1vqvzn4y33by5.jpg",
        projectMediaLinks: [
          "https://artevoapp.github.io/",
          "https://apps.apple.com/tr/app/artevo/id6472241512?l=tr",
          "https://discord.gg/hvtNkNEsTv",
        ]),
    Project(
        title: "FMA",
        subtitle: "Free Music Application",
        description:
            "Free Music App is an application that can help you find, listen and download free music.",
        coverUrl: "assets/projects/fma/app_cover.jpeg",
        iconUrl: "assets/projects/fma/app_icon.png",
        projectMediaLinks: ["https://github.com/opiasdream/fma"]),
  ];
}
