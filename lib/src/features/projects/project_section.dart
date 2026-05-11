import 'package:flutter/material.dart';
import 'project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Featured Projects",
            style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 36),
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: [
              SizedBox(
                width: 400, // Constrain width for the wrap effect
                child: ProjectCard(
                  title: 'Modern AnimeList Service',
                  description: 'A comprehensive tracking platform featuring a context-aware spoiler avoidance system, smart sequel notifications, and a robust community forum architecture.',
                  techStack: const ['Next.js', 'Node.js', 'Prisma'],
                  onLinkTap: () {},
                ),
              ),
              SizedBox(
                width: 400,
                child: ProjectCard(
                  title: 'ClickPic',
                  description: 'A deployed document printing and collection service for campus students. Features cross-platform accessibility and automated vendor payment routing.',
                  techStack: const ['Flutter', 'Dart', 'Razorpay'],
                  onLinkTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}