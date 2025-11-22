import 'package:flutter/material.dart';
import '../Widgets/auth_button.dart';
import '../Widgets/custom_text_field.dart';
import 'signup_screen.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/2.png', width: 100, height: 100),
                const SizedBox(height: 20),
                CustomTextField(label: 'Email', controller: loginController),
                const SizedBox(height: 10),
                CustomTextField(
                  label: 'Password',
                  controller: passwordController,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                AuthButton(
                  text: 'Login',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => const AlertDialog(
                        title: Text('Message'),
                        content: Text('Need to implement email'),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SignupScreen()),
                  ),
                  child: const Text('Sign up'),
                ),
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ForgotPasswordScreen()),
                  ),
                  child: const Text('Forgot password?'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
