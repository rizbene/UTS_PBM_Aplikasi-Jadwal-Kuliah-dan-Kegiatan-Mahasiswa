import 'package:flutter/material.dart';

class Akun extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;

  const Akun({super.key, required this.isDarkMode, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24), // tambahkan jarak atas dan bawah
          child: Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 24.0), // padding dalam card
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Rizky Galih Dwiyanto',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  const Text('NIM: 4522210074', style: TextStyle(fontSize: 16)),
                  const Text('Email: 4522210074@univpancasila.ac.id', style: TextStyle(fontSize: 14)),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Mode Gelap', style: TextStyle(fontSize: 16)),
                      Switch(
                        value: isDarkMode,
                        onChanged: (value) => toggleTheme(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
