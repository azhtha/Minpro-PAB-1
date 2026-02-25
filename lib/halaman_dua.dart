import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HalamanDua extends StatelessWidget {
  final List<Map<String, String>> beritaList;
  final Function(int) onDelete;

  const HalamanDua({
    super.key,
    required this.beritaList,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Berita"),
        backgroundColor: Colors.blue,
      ),
      body: beritaList.isEmpty
          ? const Center(
              child: Text(
                "Belum ada berita",
                style: TextStyle(fontSize: 16),
              ),
            )
          : ListView.builder(
              itemCount: beritaList.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(
                      beritaList[index]["judul"]!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          beritaList[index]["kota"]!,
                          style: const TextStyle(color: Colors.blue),
                        ),
                        const SizedBox(height: 4),
                        Text(beritaList[index]["deskripsi"]!),
                      ],
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        onDelete(index);
                        Get.back();
                      },
                    ),
                  ),
                );
              },
            ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text("Kembali"),
        ),
      ),
    );
  }
}