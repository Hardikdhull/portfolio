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

            // 1. ClickPic v1 Launch
            const ExperienceItem(
              role: 'Creator & Lead Developer',
              organization: 'ClickPic (MAIT Campus)',
              duration: 'May 2026',
              description: 'Successfully engineered and launched v1 of a cross-platform document printing and collection service. Architected the full system including automated vendor payment routing via Razorpay and a seamless user interface for the student body.',
            ),

            // 2. MAIT Project Winner
            const ExperienceItem(
              role: 'Winner, Innovative Project Competition',
              organization: 'CST Dept, Maharaja Agrasen Institute of Technology',
              duration: '2026',
              description: 'Led a core technical team to design, build, and pitch an innovative technical solution, successfully securing first place among department peers.',
            ),

            // 3. DRDO
            const ExperienceItem(
              role: 'Native Android Development Intern',
              organization: 'Defence Research and Development Organisation (DRDO)',
              duration: 'Summer 2025',
              description: 'Developed and optimized native Android architectures, focusing on performance, security, and production-ready code in a highly rigorous technical environment.',
            ),

            // 4. IBM SkillsBuild
            const ExperienceItem(
              role: 'Technical Trainee',
              organization: 'IBM SkillsBuild',
              duration: 'July - August 2024',
              description: 'Completed intensive technical training focused on modern software development methodologies, cloud infrastructure, and applying theoretical concepts to industry-standard project frameworks.',
              isLast: true, // Hides the trailing timeline line
            ),
          ],
        ),
      ),
    );
  }
}