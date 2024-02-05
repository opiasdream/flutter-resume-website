import 'dart:convert';

import 'package:flutter/foundation.dart';

class Project {
  String name;
  String description;
  String imageUrl;
  List<String> projectMediaLinks;
  Project({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.projectMediaLinks,
  });

  Project copyWith({
    String? name,
    String? description,
    String? imageUrl,
    List<String>? projectMediaLinks,
  }) {
    return Project(
      name: name ?? this.name,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      projectMediaLinks: projectMediaLinks ?? this.projectMediaLinks,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'projectMediaLinks': projectMediaLinks,
    };
  }

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      projectMediaLinks: List<String>.from(map['projectMediaLinks']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Project.fromJson(String source) =>
      Project.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Project(name: $name, description: $description, imageUrl: $imageUrl, projectMediaLinks: $projectMediaLinks)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Project &&
        other.name == name &&
        other.description == description &&
        other.imageUrl == imageUrl &&
        listEquals(other.projectMediaLinks, projectMediaLinks);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        imageUrl.hashCode ^
        projectMediaLinks.hashCode;
  }
}
