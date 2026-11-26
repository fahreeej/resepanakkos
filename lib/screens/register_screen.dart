import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Akun Baru')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(decoration: InputDecoration(labelText: 'Nama Lengkap', border: OutlineInputBorder())),
            const SizedBox(height: 16),
            const TextField(decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder())),
            const SizedBox(height: 16),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder())),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Registrasi berhasil! Silakan login.')),
                );
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange, foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 14)),
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}