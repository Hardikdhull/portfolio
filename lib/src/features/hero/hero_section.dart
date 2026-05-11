import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

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
            "I build scalable systems and production-grade mobile applications, "
                "bridging the gap between complex code and user-centric design.",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {},
            child: const Text("View My Work"),
          ),
        ],
      ),
    );
  }
}