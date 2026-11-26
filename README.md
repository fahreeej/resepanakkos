# 🍳 Resep Anak Kos (`resepanakkos`)

Aplikasi mobile berbasis **Flutter** yang membantu mahasiswa dan anak kos mengolah bahan makanan seadanya menjadi hidangan lezat, praktis, dan hemat biaya. Aplikasi ini menggabungkan katalog resep instan dengan asisten koki berbasis kecerdasan buatan (**Google Gemini AI**).

---

## Fitur Utama Project

* **Autentikasi Pengguna (Splash, Login & Register):** Alur masuk aplikasi yang rapi mulai dari layar pembuka hingga pendaftaran akun.
* **Katalog Resep Kos (`GridView` + Modal Detail):** Daftar resep populer anak kos lengkap dengan estimasi biaya, durasi memasak, daftar bahan, dan langkah pembuatan.
* **Racik Resep AI (`google_generative_ai`):** Pengguna cukup mengetikkan bahan yang tersedia di kamar kos (misalnya *"Telur 2 butir"*), dan Gemini AI akan menghasilkan resep lengkap beserta cara memasak menggunakan alat sederhana (teflon atau *rice cooker*).
* **Tentang Aplikasi & Logout:** Halaman informasi aplikasi, hak cipta pengembang, serta tombol keluar sesi.

---

## Tampilan Aplikasi (Screenshots)

| Halaman Login | Halaman Register | Katalog Resep (GridView) | Detail Resep |
| :---: | :---: | :---: | :---: |
| <img width="230" alt="login" src="https://github.com/user-attachments/assets/6ce28da4-6c4e-47e1-bbb7-827854648c49" /> | <img width="230" alt="register" src="https://github.com/user-attachments/assets/e195e747-5062-4dc0-82f6-5114845dc66f" /> | <img width="230" alt="katalog" src="https://github.com/user-attachments/assets/47bae167-e526-4f04-bb96-23e1ede68a13" /> | <img width="230" alt="detail_resep" src="https://github.com/user-attachments/assets/6a90ceed-4cf7-4bc5-b720-f640de0ee672" /> |

| Informasi Aplikasi | Racik AI (Input) | Racik AI (Hasil Resep) |
| :---: | :---: | :---: |
| <img width="230" alt="about" src="https://github.com/user-attachments/assets/92e4442b-7232-4249-835b-92ba79e74396" /> | <img width="230" alt="ai_proses_awal" src="https://github.com/user-attachments/assets/ec3463d7-babd-4a1b-8ad1-7584893b794a" /> | <img width="230" alt="ai_proses_akhir" src="https://github.com/user-attachments/assets/3fad2636-55f7-4886-b6b5-dacd68ec2e4c" /> |

---

## ⚠️ Penting: Konfigurasi API Key Sebelum Menjalankan Aplikasi

Demi keamanan akun, **API Key Google Gemini tidak disertakan** di dalam repositori publik ini. Sebelum menjalankan aplikasi (`flutter run`), Anda wajib memasukkan API Key Anda sendiri:

1. Buka **[Google AI Studio](https://aistudio.google.com/apikey)** dan buat API Key gratis (diawali dengan `AIzaSy...`).
2. Buka file **`lib/screens/racik_ai_screen.dart`** pada project ini.
3. Ganti nilai variabel `_apiKey` dengan API Key milik Anda:
   ```dart
   static const String _apiKey = 'MASUKKAN_API_KEY_GEMINI_ANDA';

---

## Identitas

| Keterangan | Detail |
| :--- | :--- |
| **Nama** | Fahrij Arrohman |
| **NIM / NPM** | 24552011210 |
| **Kelas** | TIF RM 24A |
| **Mata Kuliah** | Pemrograman Mobile II |

---

Terima kasih sudah membaca dokumentasi ini. Sekian dari aplikasi Resep Anak Kos ini, semoga bermanfaat.
