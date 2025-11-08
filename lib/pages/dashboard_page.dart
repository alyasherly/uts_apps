import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Demo'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Aksi notifikasi (opsional)
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Header dengan nama user
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              'Halo, Andi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // Gambar/Banner
          Image.asset(
            'assets/banner.png', // Ganti dengan path asset lokal Anda
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          // Menu dalam Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Menu Profil
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: Column(
                  children: [
                    Icon(Icons.person, size: 40),
                    Text('Profil'),
                  ],
                ),
              ),
              // Menu Data
              Column(
                children: [
                  Icon(Icons.list, size: 40),
                  Text('Data'),
                ],
              ),
              // Menu Pengaturan
              Column(
                children: [
                  Icon(Icons.settings, size: 40),
                  Text('Pengaturan'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}