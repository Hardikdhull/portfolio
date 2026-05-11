import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      debugPrint('Could not launch $urlString');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
      color: Theme.of(context).colorScheme.surface, // Slightly different background
      child: Column(
        children: [
          Text(
            "Let's Build Something Great.",
            style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 36),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Text(
            "Currently open for new opportunities and interesting technical challenges.",
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),

          // Action Buttons
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () => _launchUrl('mailto:your.email@example.com'), // UPDATE THIS
                icon: const Icon(Icons.email),
                label: const Text("Email Me"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                ),
              ),
              OutlinedButton.icon(
                onPressed: () => _launchUrl('https://github.com/yourusername'), // UPDATE THIS
                icon: const Icon(Icons.code),
                label: const Text("GitHub"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white54),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                ),
              ),
              OutlinedButton.icon(
                onPressed: () => _launchUrl('https://linkedin.com/in/yourusername'), // UPDATE THIS
                icon: const Icon(Icons.work),
                label: const Text("LinkedIn"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white54),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 80),

          // Simple Footer
          Text(
            "© ${DateTime.now().year} Hardik Dhull. Built with Flutter Web.",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white54),
          ),
        ],
      ),
    );
  }
}