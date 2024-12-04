import 'package:flutter/material.dart';
import 'package:cashmate/theme/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = PaletteColors.color2, // Default biru
    this.textColor = Colors.white, // Default putih
    this.borderRadius = 8.0, // Default radius
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: const Size(double.infinity, 48), // Lebar penuh
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class PrimaryOutlineButtom extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color borderColor;
  final Color textColor;
  final double borderRadius;

  const PrimaryOutlineButtom({
    super.key,
    required this.text,
    required this.onPressed,
    this.borderColor = const Color(0xFF2973AD), // Default biru
    this.textColor = const Color(0xFF2973AD), // Default biru
    this.borderRadius = 8.0, // Default radius
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: borderColor, // Warna border
          width: 1.5,
        ),
        minimumSize: const Size(double.infinity, 48), // Lebar penuh
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
