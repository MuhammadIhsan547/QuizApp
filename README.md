
# 📱 Quiz App

Sebuah aplikasi kuis sederhana yang dibangun menggunakan Flutter. Aplikasi ini memungkinkan pengguna untuk menjawab serangkaian pertanyaan pilihan ganda dan melihat hasilnya di akhir.

Aplikasi ini mencakup beberapa fitur inti dalam pengembangan Flutter, seperti manajemen state, navigasi antar layar, dan pembuatan UI yang dinamis.

## ✨ Fitur Utama
* **Halaman Awal**: Pengguna disambut dengan layar utama yang berisi tombol untuk memulai kuis dan melihat profil.
* **Sesi Kuis**: Pertanyaan disajikan satu per satu dengan pilihan jawaban yang urutannya diacak setiap kali kuis dimulai.
* **Layar Hasil**: Setelah semua pertanyaan dijawab, aplikasi akan menampilkan ringkasan hasil, termasuk jumlah jawaban yang benar.
* **Ulasan Jawaban**: Pengguna dapat melihat daftar pertanyaan, jawaban mereka, dan jawaban yang benar untuk dievaluasi.
* **Mulai Ulang Kuis**: Terdapat opsi untuk mengulang kuis langsung dari layar hasil.
* **Halaman Profil**: Halaman khusus untuk menampilkan informasi tentang pengembang aplikasi.

## 🛠️ Teknologi yang Digunakan
* **Framework**: Flutter
* **Bahasa**: Dart
* **Paket Tambahan**:
    * `google_fonts`: Untuk kustomisasi font agar tampilan lebih menarik.

## 📂 Struktur Proyek
Berikut adalah beberapa file dan direktori penting dalam proyek ini:

* `lib/main.dart`: Titik masuk utama aplikasi.
* `lib/quiz.dart`: Widget utama yang mengelola state dan logika navigasi antar layar (home, questions, results, profile).
* `lib/home_screen.dart`: Tampilan untuk layar pembuka.
* `lib/questions_screen.dart`: Tampilan untuk sesi kuis.
* `lib/result_screen.dart`: Tampilan untuk menampilkan hasil akhir kuis.
* `lib/profile.dart`: Halaman yang menampilkan detail profil.
* `lib/datas/questions.dart`: Berisi daftar pertanyaan dan jawaban untuk kuis.

---

**Catatan**: *README* ini dibuat berdasarkan analisis kode proyek Anda. Anda bisa menambahkan detail lain seperti cara menjalankan proyek atau screenshot aplikasi.
