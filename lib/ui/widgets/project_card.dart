import 'package:flutter/material.dart';
import 'package:resume/constants/colors.dart';
import 'package:resume/constants/dimens.dart';
import 'package:resume/constants/paths.dart';
import 'package:resume/constants/text_styles.dart';
import 'package:resume/helpers/functions.dart';
import 'package:resume/models/project.dart';
import 'package:resume/ui/widgets/social_media_button.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  // widget.project
  late Project project;
  // hover
  ValueNotifier<bool> onHover = ValueNotifier<bool>(false);
  // project icon image provider
  late ImageProvider appIconImageProvider;
  // text color by project icon [imageProvider]
  Color? color;

  @override
  void initState() {
    project = widget.project;
    appIconImageProvider = Functions.getImageProvider(project.iconUrl);
    getColor();
    super.initState();
  }

  @override
  void dispose() {
    color;
    project;
    onHover.dispose();
    appIconImageProvider;
    super.dispose();
  }

  Future<void> getColor() async {
    try {
      await ColorScheme.fromImageProvider(provider: appIconImageProvider)
          .then((v) => color = v.onPrimary);
      setState(() {});
    } catch (e) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (v) => onHover.value = v,
      onTap: () async => project.projectMediaLinks.isNotEmpty
          ? Functions.openUrl(context, project.projectMediaLinks.first)
          : {},
      child: SizedBox(
          width: projectCoverWidth,
          height: projectCoverHeight,
          child: Stack(
            children: [cardBackkground(), cardContent()],
          )),
    );
  }

  ClipRRect cardBackkground() => ClipRRect(
      borderRadius: BorderRadius.circular(smallPadding),
      child: Image(
          image: Functions.getImageProvider(project.coverUrl),
          fit: BoxFit.cover,
          width: projectCoverWidth,
          height: projectCoverHeight,
          errorBuilder: (c, e, s) => const SizedBox.shrink()));

  ValueListenableBuilder<bool> cardContent() => ValueListenableBuilder(
      valueListenable: onHover,
      builder: (_, value, __) {
        // if mouse hover on card: show Project Detail
        if (value) {
          return Container(
              color: blackAccent.withOpacity(0.5),
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(children: [
                Text(widget.project.title, style: bold),
                Text(project.description, style: normal, softWrap: true),
                const Spacer(),
                Container(
                  color: blackAccent.withOpacity(0.8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                          project.projectMediaLinks.length,
                          (_) => Expanded(
                                child: SocialMediaButton(
                                    url: project.projectMediaLinks[_],
                                    isOnlyIcon: true),
                              ))),
                )
              ]));
        } // else : show project icon, title and subtitle
        else {
          return Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: xlargePadding, horizontal: defaultPadding),
              child: Row(children: [
                // icon
                ClipRRect(
                  borderRadius: BorderRadius.circular(defaultPadding),
                  child: Image(
                      image: appIconImageProvider,
                      width: projectIconWidth,
                      height: projectIconHeight,
                      errorBuilder: (c, e, s) => Image.asset(notFoundPath)),
                ),
                const SizedBox(width: defaultPadding),
                // title and subsitle
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project.title,
                        style: projectTitle.copyWith(color: color)),
                    const SizedBox(height: smallPadding),
                    Text(project.subtitle,
                        style: projectSubtitle.copyWith(color: color)),
                  ],
                ))
              ]));
        }
      });
}
