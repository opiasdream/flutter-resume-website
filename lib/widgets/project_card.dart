import 'package:flutter/material.dart';
import 'package:resume/constants/colors.dart';
import 'package:resume/constants/config.dart';
import 'package:resume/constants/dimens.dart';
import 'package:resume/constants/text_styles.dart';
import 'package:resume/models/project.dart';
import 'package:resume/widgets/social_media_button.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  ValueNotifier<bool> onHover = ValueNotifier<bool>(false);

  @override
  void dispose() {
    onHover.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (_) => onHover.value = _,
      onTap: () {}, // dont delete
      child: ClipRRect(
        borderRadius: BorderRadius.circular(defaultPadding),
        child: SizedBox(
          height: projectCardHeight,
          width: projectCardWidth,
          child: Stack(
            children: [
              Image.network(widget.project.imageUrl,
                  errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                  fit: BoxFit.cover),
              ValueListenableBuilder(
                  valueListenable: onHover,
                  builder: (context, value, child) {
                    if (!value) return const SizedBox.shrink();
                    return Container(
                      color: blackAccent.withOpacity(0.5),
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Column(
                        children: [
                          Text(
                            widget.project.name,
                            style: normal,
                          ),
                          SelectableText(widget.project.description,
                              style: normal),
                          const Spacer(),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: List.generate(
                                  widget.project.projectMediaLinks.length,
                                  (_) => Expanded(
                                        child: SocialMediaButton(
                                            url: widget
                                                .project.projectMediaLinks[_],
                                            isSquare: true),
                                      )))
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
