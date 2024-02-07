class Project {
  String title; // name
  String subtitle; // slogan
  String description; // brief description
  String coverUrl; // cover image url or path. 16:9
  String iconUrl; // project image url or path. 1:1
  List<String> projectMediaLinks;
  Project({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.coverUrl,
    required this.iconUrl,
    required this.projectMediaLinks,
  });
}
