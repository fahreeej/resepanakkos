import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class RacikAiScreen extends StatefulWidget {
  const RacikAiScreen({super.key});

  @override
  State<RacikAiScreen> createState() => _RacikAiScreenState();
}

class _RacikAiScreenState extends State<RacikAiScreen> {
  final _bahanController = TextEditingController();
  String _hasilResep = 'Masukkan bahan yang ada di kosanmu, lalu klik tombol Racik Resep!';
  bool _isLoading = false;

  static const String _apiKey = 'MASUKKAN_API_KEY_GEMINI_ANDA';

  Future<void> _generateResep() async {
    if (_bahanController.text.trim().isEmpty) return;

    setState(() {
      _isLoading = true;
      _hasilResep = 'Chef AI sedang meracik resep...';
    });

    try {
      final model = GenerativeModel(
        model: 'gemini-3.8-flash',
        apiKey: _apiKey,
        systemInstruction: Content.system(
          'Kamu adalah koki spesialis anak kos. Buatlah 1 resep masakan yang hemat, praktis, dan menggunakan alat masak sederhana (teflon atau rice cooker) berdasarkan bahan yang diberikan pengguna. Format jawaban singkat: Nama Menu, Bahan Tambahan Sederhana, dan Langkah Memasak.',
        ),
      );

      final response = await model.generateContent([
        Content.text('Bahan yang saya punya: ${_bahanController.text}'),
      ]);

      setState(() {
        _hasilResep = response.text ?? 'Gagal mendapatkan resep.';
      });
    } catch (e) {
      setState(() {
        _hasilResep = 'Terjadi kesalahan: $e';
      });
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Racik Resep AI'), backgroundColor: Colors.deepOrange, foregroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _bahanController,
              maxLines: 3,
              decoration: const InputDecoration(
                hintText: 'Contoh: Telur 2 butir, sosis 1, kecap manis, nasi putih...',
                border: OutlineInputBorder(),
                labelText: 'Bahan yang tersedia',
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: _isLoading ? null : _generateResep,
              icon: const Icon(Icons.auto_awesome),
              label: Text(_isLoading ? 'Meracik...' : 'Buatkan Resep Sekarang'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange, foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 14)),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.orange.shade200),
                ),
                child: SingleChildScrollView(
                  child: Text(_hasilResep, style: const TextStyle(fontSize: 15, height: 1.4)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}