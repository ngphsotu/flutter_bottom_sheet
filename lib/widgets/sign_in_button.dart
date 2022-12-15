import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final String textLabel;
  final String iconPath;
  final double elevation;
  final Color backgroundColor;
  final void Function()? onTap;

  const SignInButton({
    super.key,
    required this.textLabel,
    required this.iconPath,
    required this.elevation,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          elevation: elevation,
          backgroundColor: backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(height: 20, width: 20, image: AssetImage(iconPath)),
              const SizedBox(width: 14),
              Text(
                textLabel,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
