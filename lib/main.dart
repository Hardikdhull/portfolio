import 'package:flutter/material.dart';
import 'src/constants/theam.dart';
import 'src/shared/nav_bar.dart';
import 'src/features/hero/hero_section.dart';
import 'src/features/projects/project_section.dart';

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

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            NavBar(),
            HeroSection(),
            ProjectsSection(),
          ],
        ),
      ),
    );
  }
}