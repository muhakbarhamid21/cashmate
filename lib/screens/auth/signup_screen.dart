import 'package:flutter/material.dart';
import 'package:cashmate/theme/colors.dart';
import 'package:cashmate/widgets/custom_text_field.dart';
import 'package:cashmate/widgets/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: PaletteColors.color2,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'SIGN UP',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const SizedBox(height: 32),
              const CustomTextField(
                labelText: 'Name',
              ),
              const SizedBox(height: 16),
              const CustomTextField(
                labelText: 'Phone Number',
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              const CustomTextField(
                labelText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              const CustomTextField(
                labelText: 'Password',
                obscureText: true, // Tambahkan ikon mata
              ),
              const SizedBox(height: 16),
              const CustomTextField(
                labelText: 'Confirm Password',
                obscureText: true, // Tambahkan ikon mata
              ),
              const SizedBox(height: 32),
              PrimaryButton(
                text: 'Sign up',
                onPressed: () {
                  // Tambahkan logika pendaftaran
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
