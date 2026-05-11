import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailDialog extends StatelessWidget {
  final String title;
  final String problem;
  final String solution;
  final List<String> features;
  final List<String> techStack;
  final String? liveUrl;
  final String? githubUrl;
  const ProjectDetailDialog({
    super.key,
    required this.title,
    required this.problem,
    required this.solution,
    required this.features,
    required this.techStack,
    this.liveUrl,
    this.githubUrl,
  });

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      debugPrint('Could not launch $urlString');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xFF1E293B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 800, maxHeight: 800),
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(title, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
                ),
                IconButton(icon: const Icon(Icons.close, color: Colors.white54), onPressed: () => Navigator.pop(context)),
              ],
            ),
            const Divider(height: 40, color: Colors.white10),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionTitle("The Problem"),
                    _buildBodyText(problem),
                    const SizedBox(height: 24),

                    _buildSectionTitle("Technical Solution"),
                    _buildBodyText(solution),
                    const SizedBox(height: 24),

                    _buildSectionTitle("Key Features"),
                    ...features.map((f) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.check_circle_outline, size: 18, color: Theme.of(context).primaryColor),
                          const SizedBox(width: 12),
                          Expanded(child: _buildBodyText(f)),
                        ],
                      ),
                    )),
                    const SizedBox(height: 32),

                    _buildSectionTitle("Tech Stack"),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: techStack.map((tech) => Chip(
                        label: Text(tech, style: const TextStyle(color: Colors.blueAccent, fontSize: 12)),
                        backgroundColor: Colors.blueAccent.withOpacity(0.1),
                        side: BorderSide.none,
                      )).toList(),
                    ),

                    if (liveUrl != null || githubUrl != null) ...[
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          if (liveUrl != null)
                            ElevatedButton.icon(
                              onPressed: () => _launchUrl(liveUrl!),
                              icon: const Icon(Icons.link),
                              label: const Text("Live Demo"),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                              ),
                            ),
                          if (liveUrl != null && githubUrl != null)
                            const SizedBox(width: 16),
                          if (githubUrl != null)
                            OutlinedButton.icon(
                              onPressed: () => _launchUrl(githubUrl!),
                              icon: const Icon(Icons.code),
                              label: const Text("Source Code"),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.white,
                                side: const BorderSide(color: Colors.white54),
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                              ),
                            ),
                        ],
                      ),
                    ]
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
    );
  }

  Widget _buildBodyText(String text) {
    return Text(text, style: const TextStyle(fontSize: 16, color: Colors.white70, height: 1.6));
  }
}