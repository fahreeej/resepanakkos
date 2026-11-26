import 'package:flutter/material.dart';
import '../data/dummy_resep.dart';
import '../models/resep_model.dart';

class KatalogScreen extends StatelessWidget {
  const KatalogScreen({super.key});

  void _showDetail(BuildContext context, ResepModel resep) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(resep.nama),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Estimasi: ${resep.harga} | Waktu: ${resep.waktu}', style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange)),
              const Divider(),
              const Text('Bahan:', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(resep.bahan),
              const SizedBox(height: 12),
              const Text('Cara Membuat:', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(resep.langkah),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Tutup')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Katalog Resep Kos'), backgroundColor: Colors.deepOrange, foregroundColor: Colors.white),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.9,
        ),
        itemCount: daftarResepKos.length,
        itemBuilder: (context, index) {
          final item = daftarResepKos[index];
          return InkWell(
            onTap: () => _showDetail(context, item),
            child: Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.orangeAccent,
                      child: Icon(Icons.fastfood, color: Colors.white, size: 30),
                    ),
                    const SizedBox(height: 12),
                    Text(item.nama, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    const SizedBox(height: 6),
                    Text(item.harga, style: const TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.w600)),
                    Text(item.waktu, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}