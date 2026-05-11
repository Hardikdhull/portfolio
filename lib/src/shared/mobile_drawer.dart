import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  final VoidCallback onProjectsTap;
  final VoidCallback onExperienceTap;
  final VoidCallback onContactTap;

  const MobileDrawer({
    super.key,
    required this.onProjectsTap,
    required this.onExperienceTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                "<HD/>",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          _DrawerTile(title: "Projects", onTap: onProjectsTap),
          _DrawerTile(title: "Experience", onTap: onExperienceTap),
          _DrawerTile(title: "Contact", onTap: onContactTap), // Wired up
        ],
      ),
    );
  }
}

class _DrawerTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _DrawerTile({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white70, fontSize: 18),
      ),
      onTap: onTap,
    );
  }
}