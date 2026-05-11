import 'package:flutter/material.dart';
import 'experiance_item.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 900),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Experience & Milestones",
              style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 36),
            ),
            const SizedBox(height: 40),

            // Timeline Items
            const ExperienceItem(
              role: 'Native Android Development Intern',
              organization: 'Defence Research and Development Organisation (DRDO)',
              duration: 'Recent',
              description: 'Developed and optimized native Android architectures, focusing on performance, security, and production-ready code in a highly rigorous technical environment.',
            ),
            const ExperienceItem(
              role: 'Winner, Innovative Project Competition',
              organization: 'CST Dept, Maharaja Agrasen Institute of Technology',
              duration: '2026',
              description: 'Led a core technical team to design, build, and pitch an innovative technical solution, successfully securing first place among department peers.',
            ),
            const ExperienceItem(
              role: 'High Achiever, Specialist Programmer Assessment',
              organization: 'Infosys',
              duration: 'May 2026',
              description: 'Successfully resolved complex algorithmic challenges involving segment trees and dynamic programming under strict time constraints.',
              isLast: true,
            ),
          ],
        ),
      ),
    );
  }
}