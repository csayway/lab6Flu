import 'package:flutter/material.dart';
import '../Widgets/auth_button.dart';
import '../Widgets/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final loginController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Icon(Icons.person_add, size: 80, color: Colors.green),
                const SizedBox(height: 20),
                CustomTextField(label: 'Name', controller: nameController),
                const SizedBox(height: 10),
                CustomTextField(label: 'Login', controller: loginController),
                const SizedBox(height: 10),
                CustomTextField(
                  label: 'Password',
                  controller: passwordController,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                AuthButton(
                  text: 'Register',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => const AlertDialog(
                        title: Text('Message'),
                        content: Text('Registration complete!'),
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
