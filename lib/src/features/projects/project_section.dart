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
                width: 400,
                child: ProjectCard(
                  title: 'ClickPic',
                  description: 'A deployed document printing and collection service for campus students. Features cross-platform accessibility and automated vendor payment routing.',
                  techStack: const ['Flutter', 'Dart', 'Razorpay'],
                  onLinkTap: () {},
                ),
              ),
              SizedBox(
                width: 400,
                child: ProjectCard(
                  title: 'Modern AnimeList Service',
                  description: 'A comprehensive tracking platform featuring a context-aware spoiler avoidance system, smart sequel notifications, and a robust community forum architecture.',
                  techStack: const ['Next.js', 'Node.js', 'Prisma'],
                  onLinkTap: () {},
                ),
              ),



              // 3. WebRTC Video Call App
              SizedBox(
                width: 400,
                child: ProjectCard(
                  title: 'Flutter WebRTC Video Call',
                  description: 'A real-time peer-to-peer video and audio communication application. Engineered with secure signaling and low-latency data streams for seamless connectivity.',
                  techStack: const ['Flutter', 'WebRTC', 'WebSockets'],
                  onLinkTap: () {},
                ),
              ),

              SizedBox(
                width: 400,
                child: ProjectCard(
                  title: 'Coral Reef Conservation Web',
                  description: 'A highly responsive and visually engaging web platform built to showcase environmental data. Optimized for performance and cross-device compatibility.',
                  techStack: const ['Flutter Web', 'Responsive Design'],
                  onLinkTap: () {},
                ),
              ),

              SizedBox(
                width: 400,
                child: ProjectCard(
                  title: 'Live Location Tracker',
                  description: 'A mobile utility mapping application integrating live GPS coordinates, background location updates, and secure user routing.',
                  techStack: const ['Kotlin', 'OSMdriod', 'Geolocation','Android'],
                  onLinkTap: () {},
                ),
              ),

              SizedBox(
                width: 400,
                child: ProjectCard(
                  title: 'Zero-Width Steganography Tool',
                  description: 'An information security utility for encoding hidden data within standard text. Allows for secure message transmission without altering the visual output.',
                  techStack: const ['OSINT', 'Cybersecurity', 'Binary Encoding'],
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