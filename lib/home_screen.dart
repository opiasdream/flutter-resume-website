import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:resume/constants/colors.dart';
import 'package:resume/constants/dimens.dart';
import 'package:resume/constants/text_styles.dart';
import 'package:resume/models/project.dart';
import 'package:resume/data/resume_data.dart';
import 'package:resume/widgets/project_card.dart';
import 'package:resume/widgets/social_media_button.dart';

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
        padding: const EdgeInsets.all(largePadding),
        children: [
          Wrap(
            spacing: largePadding,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  // Lottie.asset('assets/lottie/avatar.json',
                  //     width: 400, animate: true),
                  CircleAvatar(
                      radius: 102,
                      backgroundColor: Colors.green,
                      child: Image.asset("assets/images/avatar.png"))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(profileTitle, style: title),
                  const SizedBox(
                      width: bodyWidth,
                      child: Text(profileBody, style: normal)),
                  Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Wrap(
                      spacing: defaultPadding,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runSpacing: defaultPadding,
                      children: List.generate(socialMediaLinks.length,
                          (_) => SocialMediaButton(url: socialMediaLinks[_])),
                    ),
                  ),
                ],
              )
            ],
          ),
          const Text(projectsTitle, style: title, textAlign: TextAlign.center),
          const SizedBox(height: defaultPadding),
          Wrap(
            spacing: largePadding,
            runSpacing: defaultPadding,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: List.generate(
                projectList.length,
                (index) =>
                    ProjectCard(project: Project.fromMap(projectList[index]))),
          ),
        ],
      ),
    );
  }
}
