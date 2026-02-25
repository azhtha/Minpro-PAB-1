import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'halaman_dua.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanSatu(),
    );
  }
}

class HalamanSatu extends StatefulWidget {
  const HalamanSatu({super.key});

  @override
  State<HalamanSatu> createState() => _HalamanSatuState();
}

class _HalamanSatuState extends State<HalamanSatu> {
  final TextEditingController judulController = TextEditingController();
  final TextEditingController kotaController = TextEditingController();
  final TextEditingController deskripsiController = TextEditingController();

  final List<Map<String, String>> beritaList = [];

  void tambahBerita() {
    if (judulController.text.isNotEmpty &&
        kotaController.text.isNotEmpty &&
        deskripsiController.text.isNotEmpty) {
      setState(() {
        beritaList.add({
          "judul": judulController.text,
          "kota": kotaController.text,
          "deskripsi": deskripsiController.text,
        });
      });

      judulController.clear();
      kotaController.clear();
      deskripsiController.clear();
    }
  }

  void hapusBerita(int index) {
    setState(() {
      beritaList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi Berita"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            Container(
              height: 150,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/beritakaltim.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.4),
                  ),
                  const Center(
                    child: Text(
                      "BERITA KALIMANTAN TIMUR",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: judulController,
              decoration: const InputDecoration(
                labelText: "Judul Berita",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: kotaController,
              decoration: const InputDecoration(
                labelText: "Kota",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: deskripsiController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: "Isi Berita",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: tambahBerita,
                child: const Text("Tambah Berita"),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => HalamanDua(
                        beritaList: beritaList,
                        onDelete: hapusBerita,
                      ));
                },
                child: const Text("Lihat Semua Berita"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}