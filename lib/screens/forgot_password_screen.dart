import 'package:flutter/material.dart';
import '../Widgets/auth_button.dart';
import '../Widgets/custom_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Forgot Password')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Icon(Icons.lock_reset, size: 80, color: Colors.green),
                const SizedBox(height: 20),
                CustomTextField(label: 'Email', controller: emailController),
                const SizedBox(height: 20),
                AuthButton(
                  text: 'Reset Password',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => const AlertDialog(
                        title: Text('Message'),
                        content: Text('Password reset link sent!'),
                      ),
                    );
                  },
                ),
                OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Back to Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
