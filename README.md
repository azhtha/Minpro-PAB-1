# Azhaar Athahiroh | 2409116057
# Aplikasi Berita Kalimantan Timur

## Deskripsi Aplikasi
Aplikasi ini dibuat menggunakan Flutter. Di dalam aplikasi ini, user bisa menambahkan berita, melihat daftar berita, dan menghapus berita.

Setiap berita memiliki 3 data utama:
- Judul Berita
- Kota
- Isi Berita

Aplikasi ini juga menggunakan navigasi multi halaman dengan GetX.

---

## Fitur Aplikasi

1. **Tambah Data (Create)**

<p align="center">
<img src="https://github.com/user-attachments/assets/b89500a9-4e84-4092-a3b7-c0d4cd3bde9f" width="375"/>
</p>

User bisa menambahkan berita melalui form yang terdiri dari 3 TextField.

2. **Tampilkan Data (Read)**

<p align="center">
<img src="https://github.com/user-attachments/assets/a1ec290d-3ecd-4f6e-b8ac-c936a75958b8" width="321"/>
</p>

Semua berita yang sudah ditambahkan akan ditampilkan dalam bentuk list.

3. **Hapus Data (Delete)**

<p align="center">
<img src="https://github.com/user-attachments/assets/205dfcf3-33c9-44ad-9cab-ec32d3777454" width="263"/>
</p>

User bisa menghapus berita dengan menekan tombol delete.

4. **Multi Page**

Navigasi ke halaman kedua menggunakan GetX

<p align="center">
<img src="https://github.com/user-attachments/assets/94233dcd-c086-421d-8f53-b349c60e85bf" width="258"/>
</p>

Aplikasi memiliki 2 halaman:

- Halaman Form Input

<p align="center">
<img src="https://github.com/user-attachments/assets/cfbc6e9a-e845-46de-a334-7de28edcadfe" width="800"/>
</p>

- Halaman Daftar Berita

<p align="center">
<img src="https://github.com/user-attachments/assets/c8b36482-babf-4e89-9454-e51598546333" width="800"/>
</p>
     
---

## Widget yang Digunakan

Berikut beberapa widget yang digunakan dalam aplikasi ini:

- **GetMaterialApp**

<p align="center">
<img src="https://github.com/user-attachments/assets/a6448c28-dd7b-43ff-a423-02e93b4fb888" width="298"/>
</p>

Digunakan untuk mengatur aplikasi utama dan navigasi menggunakan GetX.

- **Scaffold**

<p align="center">
<img src="https://github.com/user-attachments/assets/e8153cae-f10d-4828-b84f-2890ced5228f" width="323"/>
</p>

Sebagai kerangka dasar tampilan (AppBar dan Body).

- **AppBar**  
Untuk menampilkan judul di bagian atas aplikasi.

- **TextField**

<p align="center">
<img src="https://github.com/user-attachments/assets/db2a5bf9-9a21-434d-8cbc-ed0379492b5c" width="297"/>
</p>

Digunakan untuk input data berita (judul, kota, isi berita).

- **ElevatedButton**

<p align="center">
<img src="https://github.com/user-attachments/assets/a0d2b5bc-72b1-4481-85c7-f54edc0a454e" width="294"/>
</p>

Tombol untuk menambahkan berita dan berpindah halaman.

- **ListView.builder**

<p align="center">
<img src="https://github.com/user-attachments/assets/b6d5eca9-1d43-4a1b-8935-256e27c3309d" width="304"/>
</p>

Untuk menampilkan daftar berita secara dinamis.

- **Card**

<p align="center">
<img src="https://github.com/user-attachments/assets/d53cbd76-f118-496f-bc82-4a2d3fab7a63" width="292"/>
</p>

Untuk membungkus tampilan setiap item berita agar lebih rapi.

- **ListTile**

<p align="center">
<img src="https://github.com/user-attachments/assets/3db083eb-478e-4a72-837b-caff54aadaaf" width="260"/>
</p>

Untuk menampilkan isi berita dalam bentuk list.

- **IconButton**

<p align="center">
<img src="https://github.com/user-attachments/assets/71fd0954-4c8f-4a87-b5cc-6d35a9446caf" width="428"/>
</p>

Tombol untuk menghapus berita.

- **Image.asset**

<p align="center">
<img src="https://github.com/user-attachments/assets/0504be43-3ab4-4abe-a78e-a835c4689767" width="287"/>
</p>

Untuk menampilkan gambar header dari folder assets.

- **Stack & Container**

<p align="center">
<img src="https://github.com/user-attachments/assets/7c6bab71-cd34-4786-9cc2-16f2289bcfc3" width="381"/>
</p>

Untuk mengatur tampilan header (gambar + teks).

---

## Package yang Digunakan

<p align="center">
<img src="https://github.com/user-attachments/assets/e668181b-8aca-41dc-9079-2424e86d11fc" width="158"/>
</p>

- get: ^4.6.6

Digunakan untuk mempermudah navigasi antar halaman.
