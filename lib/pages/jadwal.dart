import 'package:flutter/material.dart';

class Jadwal extends StatelessWidget {
  const Jadwal({super.key});

  final List<Map<String, String>> jadwal = const [
    {'day': 'Senin', 'course': 'Pemrograman Berbasis Mobile', 'sks': '3 SKS', 'time': '08:00 - 10:30'},
    {'day': 'Senin', 'course': 'Ethical Hacking', 'sks': '3 SKS', 'time': '10:30 - 13:00'},
    {'day': 'Selasa', 'course': 'Metode Penelitian', 'sks': '3 SKS', 'time': '11:21 - 13:50'},
    {'day': 'Selasa', 'course': 'Prak. Pemrograman Berbasis Mobile', 'sks': '1 SKS', 'time': '13:50 - 16:20'},
    {'day': 'Rabu', 'course': 'Manajemen Proyek', 'sks': '3 SKS', 'time': '09:40 - 12:10	'},
    {'day': 'Kamis', 'course': 'Computer Forensic', 'sks': '3 SKS', 'time': '10:30 - 13:00'},
    {'day': 'Jumat', 'course': 'Geoinformatika', 'sks': '2 SKS', 'time': '08:00 - 09:40	'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: jadwal.map((item) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: ListTile(
            title: Text(item['course']!),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hari: ${item['day']}'),
                Text('SKS: ${item['sks']}'),
                Text('Jam: ${item['time']}'),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
