import 'package:flutter/material.dart';
import 'package:cashmate/theme/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  void _launchEmail() async {
    final Uri emailUri =
        Uri.parse('https://mailto:cashmate_developer@gmail.com');
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch mailto:cashmate_developer@gmail.com';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _launchEmail,
      child: const Text(
        'Forgot Password?',
        style: TextStyle(color: PaletteColors.color6),
      ),
    );
  }
}
