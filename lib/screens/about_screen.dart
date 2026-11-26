import 'package:flutter/material.dart';
import 'login_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 12),
            const CircleAvatar(
              radius: 48,
              backgroundColor: Colors.deepOrange,
              child: Icon(Icons.soup_kitchen, size: 54, color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Text(
              'Resep Anak Kos v1.0',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: const Column(
                children: [
                  Text(
                    'Resep Anak Kos adalah aplikasi asisten memasak praktis yang dirancang khusus untuk membantu mahasiswa dan perantau mengolah bahan makanan seadanya menjadi hidangan lezat, cepat, dan hemat biaya.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, height: 1.5, color: Colors.black87),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Aplikasi ini menyediakan katalog resep favorit yang dapat diakses secara instan serta fitur Racik AI berbasis Google Gemini yang mampu menciptakan ide resep baru secara otomatis dari bahan yang tersedia di kamar kos.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, height: 1.5, color: Colors.black87),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Copyright by FahrijArrohman_24552011210',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 28),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                    (route) => false,
                  );
                },
                icon: const Icon(Icons.logout),
                label: const Text('Keluar (Logout)'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.deepOrange,
                  side: const BorderSide(color: Colors.deepOrange),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}