import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Foto/Avatar
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar.png'), // Ganti dengan path asset lokal Anda
            ),
            SizedBox(height: 20),
            // Data dalam Column
            Text(
              'Nama: Andi Pratama',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'NIM/ID: 12345678',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Email: andi@example.com',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            // Row kecil untuk info lain
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Prodi: Informatika'),
                SizedBox(width: 20),
                Text('Semester: 6'),
              ],
            ),
            SizedBox(height: 20),
            // Tombol Kembali ke Dashboard
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman sebelumnya (Dashboard)
              },
              child: Text('Kembali ke Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}