import 'package:flutter/material.dart';
import 'project_card.dart';
import 'project_detail.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  void _openProjectDialog({
    required BuildContext context,
    required String title,
    required String problem,
    required String solution,
    required List<String> features,
    required List<String> techStack,
    String? liveUrl,
    String? githubUrl,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ProjectDetailDialog(
          title: title,
          problem: problem,
          solution: solution,
          features: features,
          techStack: techStack,
          liveUrl: liveUrl,
          githubUrl: githubUrl,
        );
      },
    );
  }

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
                  onLinkTap: () => _openProjectDialog(
                    context: context,
                    title: 'ClickPic',
                    problem: 'Fragmented document collection and printing at the MAIT campus led to massive delays, lost files, and severe vendor payment confusion.',
                    solution: 'Architected a production-grade cross-platform gateway. Integrated the Razorpay API to construct an automated payout system that handles the vendor ledgering in real-time, completely eliminating manual bookkeeping.',
                    features: [
                      'Real-time Document Status Tracking',
                      'Automated Vendor Payout Routing',
                      'Secure PDF Parsing & Storage',
                      'Cross-Platform Deployment (Web & Android)'
                    ],
                    techStack: const ['Flutter', 'Dart', 'Razorpay', 'Node.js'],
                    githubUrl: 'https://cp.arpantaneja.dev/download/android',
                    liveUrl: 'https://clickpic-alpha.vercel.app',
                  ),
                ),
              ),

              SizedBox(
                width: 400,
                child: ProjectCard(
                  title: 'Flutter WebRTC Video Call',
                  description: 'A real-time peer-to-peer video and audio communication application. Engineered with secure signaling and low-latency data streams for seamless connectivity.',
                  techStack: const ['Flutter', 'WebRTC', 'WebSockets'],
                  onLinkTap: () => _openProjectDialog(
                    context: context,
                    title: 'Flutter WebRTC Video Call',
                    problem: 'Existing campus networking tools suffered from high-latency and insecure peer-to-peer communication layers.',
                    solution: 'Implemented a custom WebRTC signaling server using WebSockets. Established secure peer connections with optimized NAT traversal (STUN/TURN) to guarantee stable, low-latency audio/video packets.',
                    features: [
                      'Low-latency Video/Audio Streaming',
                      'Custom WebSocket Signaling Server',
                      'STUN/TURN Server Integration',
                      'Room-based Architecture'
                    ],
                    techStack: const ['Flutter', 'WebRTC', 'WebSockets', 'Dart'],
                    githubUrl: 'https://github.com/Hardikdhull/VideoCall',
                  ),
                ),
              ),

              SizedBox(
                width: 400,
                child: ProjectCard(
                  title: 'Coral Reef Conservation Web',
                  description: 'A highly responsive and visually engaging web platform built to showcase environmental data. Optimized for performance and cross-device compatibility.',
                  techStack: const ['Flutter Web', 'Responsive Design'],
                  onLinkTap: () => _openProjectDialog(
                    context: context,
                    title: 'Coral Reef Conservation Web',
                    problem: 'Critical environmental data regarding coral bleaching was inaccessible and poorly formatted for both researchers and the general public.',
                    solution: 'Built a highly responsive web platform utilizing Flutter Web’s CanvasKit. This allowed for pixel-perfect, interactive data visualizations that perform smoothly across desktops, tablets, and mobile devices.',
                    features: [
                      'Interactive Data Visualization',
                      'CanvasKit Rendering Optimization',
                      'Responsive Breakpoint Architecture',
                      'Accessible Educational Resources'
                    ],
                    techStack: const ['Flutter Web', 'CanvasKit', 'Dart'],
                    githubUrl: 'https://github.com/Hardikdhull/SIC-Hackathone',
                    liveUrl: 'https://sic-hackathone-ar5d.vercel.app',
                  ),
                ),
              ),

              SizedBox(
                width: 400,
                child: ProjectCard(
                  title: 'Live Location Tracker',
                  description: 'A mobile utility mapping application integrating live GPS coordinates, background location updates, and secure user routing.',
                  techStack: const ['Flutter', 'Google Maps API', 'Geolocation'],
                  onLinkTap: () => _openProjectDialog(
                    context: context,
                    title: 'Live Location Tracker',
                    problem: 'Standard mapping applications do not provide granular, battery-efficient background tracking necessary for custom logistics routes.',
                    solution: 'Integrated the Google Maps API alongside a custom foreground service mechanism in Flutter. This architecture ensures continuous, precise GPS polling without triggering mobile OS background process terminations.',
                    features: [
                      'Live Trajectory Mapping',
                      'Background Location Polling',
                      'Battery-Efficient Service Architecture',
                      'Secure Route Data Storage'
                    ],
                    techStack: const ['Kotlin', 'Google Maps API', 'Geolocation'],
                    githubUrl: 'https://github.com/Hardikdhull/bytetask',
                  ),
                ),
              ),
              SizedBox(
                width: 400,
                child: ProjectCard(
                  title: 'App Usage Monitor',
                  description: 'A native Android utility developed to securely monitor, analyze, and log device application usage statistics utilizing core OS APIs.',
                  techStack: const ['Kotlin', 'Android SDK', 'UsageStats API'],
                  onLinkTap: () => _openProjectDialog(
                    context: context,
                    title: 'App Usage Monitor',
                    problem: 'There was a need for a secure, battery-efficient mechanism to track and analyze application usage patterns without compromising device performance or data privacy.',
                    solution: 'Architected a native Android application utilizing the UsageStatsManager API. Implemented optimized background services and a secure local database to log foreground activities while strictly adhering to rigorous performance constraints.',
                    features: [
                      'Real-time Application Tracking',
                      'Battery-Efficient Background Services',
                      'Secure Local Data Logging',
                      'Granular Usage Analytics'
                    ],
                    techStack: const ['Kotlin', 'Android SDK', 'UsageStats API', 'Room DB'],
                    githubUrl: 'https://github.com/rifsana/AppUsageMonitor',
                  ),
                ),
              ),
              SizedBox(
                width: 400,
                child: ProjectCard(
                  title: 'Modern AnimeList Service',
                  description: 'A comprehensive tracking platform featuring a context-aware spoiler avoidance system, smart sequel notifications, and a robust community forum architecture.',
                  techStack: const ['Next.js', 'Node.js', 'Prisma'],
                  onLinkTap: () => _openProjectDialog(
                    context: context,
                    title: 'Modern AnimeList Service',
                    problem: 'Users are constantly exposed to spoilers in community forums and reviews before they have caught up on a show.',
                    solution: 'Engineered a Context-Aware spoiler avoidance system. The middleware dynamically reads the user’s specific watch progress against the thread\'s tagged episode. If the content discusses future events, it is automatically blurred.',
                    features: [
                      'Context-Aware Spoiler System',
                      'Smart Airing & Sequel Notifications',
                      'Custom 1-10 Scoring & Priority Queues',
                      'Social Feed & List Comparisons'
                    ],

                    techStack: const ['Next.js', 'Node.js', 'Prisma', 'Tailwind'],
                  ),
                ),
              ),
              SizedBox(
                width: 400,
                child: ProjectCard(
                  title: 'Zero-Width Steganography Tool',
                  description: 'An information security utility for encoding hidden data within standard text. Allows for secure message transmission without altering the visual output.',
                  techStack: const ['OSINT', 'Cybersecurity', 'Binary Encoding'],
                  onLinkTap: () => _openProjectDialog(
                    context: context,
                    title: 'Zero-Width Steganography Tool',
                    problem: 'Standard text communication is highly vulnerable to OSINT and metadata analysis, requiring a covert channel for sensitive payload delivery.',
                    solution: 'Engineered a binary encoding algorithm using Zero-Width Characters. Hidden data (e.g., embedding instructions like "lets meet at golden gate bridge") is mapped to invisible Unicode characters, leaving the carrier text visually identical and bypassing standard text filters.',
                    features: [
                      'Zero-Width Unicode Encoding/Decoding',
                      'Visually Undetectable Output',
                      'Bypass of Standard Text Scraping',
                      'OSINT-Resistant Communication'
                    ],
                    techStack: const ['Dart', 'Binary Encoding', 'Cybersecurity'],
                    githubUrl: 'https://github.com/Hardikdhull/EchoChamber',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}