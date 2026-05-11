import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onViewWorkTap;

  const HeroSection({
    super.key,
    required this.onViewWorkTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hi, I'm Hardik Dhull.",
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            "Technical Architect & Product Manager",
            style: TextStyle(fontSize: 24, color: Colors.blueAccent),
          ),
          const SizedBox(height: 24),
          const Text(
            "I build scalable systems and production-grade mobile applications, \n"
                "bridging the gap between complex code and user-centric design.",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: onViewWorkTap,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            child: const Text("View My Work"),
          ),
        ],
      ),
    );
  }
}