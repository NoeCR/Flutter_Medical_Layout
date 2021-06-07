import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconHeader extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color mainColor;
  final Color secondaryColor;

  const IconHeader({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.mainColor = const Color(0xff526BF6),
    this.secondaryColor = const Color(0xff67ACF2),
  });

  @override
  Widget build(BuildContext context) {
    final Color textColor = Colors.white.withOpacity(0.7);
    return Stack(
      children: [
        _IconHeaderBackground(mainColor, secondaryColor),
        Positioned(top: -50, left: -70, child: FaIcon(icon, size: 250, color: Colors.white.withOpacity(0.2))),
        Column(
          children: [
            SizedBox(height: 80, width: double.infinity),
            Text(subtitle, style: TextStyle(fontSize: 20, color: textColor)),
            SizedBox(height: 20),
            Text(title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: textColor)),
            SizedBox(height: 20),
            FaIcon(icon, size: 70, color: Colors.white)
          ],
        ),
      ],
    );
  }
}

class _IconHeaderBackground extends StatelessWidget {
  final Color mainColor;
  final Color secondaryColor;

  const _IconHeaderBackground(this.mainColor, this.secondaryColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            mainColor,
            secondaryColor,
          ],
        ),
      ),
    );
  }
}
