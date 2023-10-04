import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconAndTextHeader extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const IconAndTextHeader({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 100, color: Colors.white),

        // hello again!
        Text(
          title,
          style: GoogleFonts.bebasNeue(fontSize: 50, color: Colors.white),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: FittedBox(
            child: Text(
              subtitle,
              // 'Welcome, I hope you have a good day!',
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
