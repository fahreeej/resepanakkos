import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'home_nav_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  void _handleLogin() {
    if (_emailController.text.isEmpty || _passController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Email dan Password tidak boleh kosong!')),
      );
      return;
    }
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeNavScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.restaurant_menu, size: 64, color: Colors.deepOrange),
            const SizedBox(height: 16),
            const Text('Masuk Akun', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _handleLogin,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange, foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 14)),
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterScreen())),
              child: const Text('Belum punya akun? Daftar di sini'),
            ),
          ],
        ),
      ),
    );
  }
}