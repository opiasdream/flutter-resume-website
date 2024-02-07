import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:resume/constants/colors.dart';
import 'package:resume/constants/dimens.dart';
import 'package:resume/constants/paths.dart';
import 'package:resume/constants/strings.dart';
import 'package:resume/constants/text_styles.dart';
import 'package:resume/data/resume.dart';
import 'package:resume/ui/widgets/project_card.dart';
import 'package:resume/ui/widgets/social_media_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: ListView(
        padding: const EdgeInsets.all(mediumPadding),
        children: [profileSection(), projectsSection()],
      ),
    );
  }

  Stack profileSection() => Stack(alignment: Alignment.center, children: [
        Lottie.asset(backgroundLottiePath, animate: true),
        Wrap(
            spacing: defaultPadding,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              const CircleAvatar(
                  radius: 100, foregroundImage: AssetImage(avatarPath)),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(section1Title, style: title),
                const SizedBox(
                    width: columnWidth,
                    child: Text(Resume.aboutMe, style: aboutMe)),
                const SizedBox(height: defaultPadding),
                Wrap(
                  spacing: defaultPadding,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runSpacing: defaultPadding,
                  children: List.generate(Resume.socialMediaUrls.length,
                      (_) => SocialMediaButton(url: Resume.socialMediaUrls[_])),
                )
              ])
            ])
      ]);

  Column projectsSection() => Column(children: [
        const SelectableText(section2Title,
            style: title, textAlign: TextAlign.center),
        const SizedBox(height: defaultPadding),
        Wrap(
          spacing: largePadding,
          runSpacing: defaultPadding,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: List.generate(Resume.projects.length,
              (i) => ProjectCard(project: Resume.projects[i])),
        )
      ]);
}
