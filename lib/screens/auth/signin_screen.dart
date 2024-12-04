import 'package:flutter/material.dart';
import 'package:cashmate/theme/colors.dart';
import 'package:cashmate/widgets/custom_text_field.dart';
import 'package:cashmate/widgets/custom_button.dart';
import 'package:cashmate/widgets/forgot_password_button.dart';
import 'package:cashmate/screens/auth/signup_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 40),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                  height: 250,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'SIGN IN',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              const CustomTextField(
                labelText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              const CustomTextField(
                labelText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 24),
              PrimaryButton(
                text: 'Sign in',
                onPressed: () {
                  // TODO:
                },
              ),
              const SizedBox(height: 16),
              const ForgotPasswordButton(),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: PaletteColors.color6,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'or',
                      style: TextStyle(color: PaletteColors.color6),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: PaletteColors.color6,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              PrimaryOutlineButtom(
                text: 'Sign up',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
