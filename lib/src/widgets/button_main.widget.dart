import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonMain extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color mainColor;
  final Color secondaryColor;
  final void Function() onPress;

  const ButtonMain(
      {required this.icon,
      required this.text,
      required this.mainColor,
      required this.secondaryColor,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Stack(
        children: [
          _ButtonMainBackground(icon, mainColor, secondaryColor),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 140, width: 40),
              FaIcon(icon, size: 40, color: Colors.white),
              SizedBox(width: 20),
              Expanded(child: Text(text, style: TextStyle(color: Colors.white, fontSize: 18))),
              FaIcon(FontAwesomeIcons.chevronRight, color: Colors.white),
              SizedBox(width: 40),
            ],
          ),
        ],
      ),
    );
  }
}

class _ButtonMainBackground extends StatelessWidget {
  final IconData icon;
  final Color mainColor;
  final Color secondaryColor;

  const _ButtonMainBackground(this.icon, this.mainColor, this.secondaryColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(4, 6),
            blurRadius: 10,
          )
        ],
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            mainColor,
            secondaryColor,
          ],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Positioned(
              top: -20,
              right: -20,
              child: FaIcon(
                icon,
                size: 150,
                color: Colors.white.withOpacity(0.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
