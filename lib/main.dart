import 'package:flutter/material.dart';
import 'package:hardik_portfolio/src/constants/theam.dart';
import 'package:hardik_portfolio/src/features/experiance/experiance_section.dart';
import 'package:hardik_portfolio/src/features/projects/project_section.dart';
import 'src/shared/nav_bar.dart';
import 'src/shared/mobile_drawer.dart';
import 'src/features/hero/hero_section.dart';
import 'src/features/projects/project_section.dart';
import 'src/features/experiance/experiance_section.dart';
import 'src/features/contact/contact_section.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hardik Dhull | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatefulWidget {
  const PortfolioHome({super.key});

  @override
  State<PortfolioHome> createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollTo(GlobalKey key) {
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MobileDrawer(
        onProjectsTap: () {
          Navigator.pop(context);
          _scrollTo(_projectsKey);
        },
        onExperienceTap: () {
          Navigator.pop(context);
          _scrollTo(_experienceKey);
        },
        onContactTap: () {
          Navigator.pop(context);
          _scrollTo(_contactKey);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(
              onProjectsTap: () => _scrollTo(_projectsKey),
              onExperienceTap: () => _scrollTo(_experienceKey),
              onContactTap: () => _scrollTo(_contactKey),
            ),

            HeroSection(
              onViewWorkTap: () => _scrollTo(_projectsKey),
            ),

            SizedBox(
              key: _projectsKey,
              child: const ProjectsSection(),
            ),
            SizedBox(
              key: _experienceKey,
              child: const ExperienceSection(),
            ),
            SizedBox(
              key: _contactKey,
              child: const ContactSection(),
            ),
          ],
        ),
      ),
    );
  }
}