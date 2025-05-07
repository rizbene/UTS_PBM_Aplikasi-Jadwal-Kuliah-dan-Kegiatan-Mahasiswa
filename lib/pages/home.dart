import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> activities = [
    {'name': 'UTS Pemrograman Berbasis Mobile', 'date': 'Senin', 'done': false},
    {'name': 'UTS Ethical Hacking', 'date': 'Senin', 'done': false},
    {'name': 'UTS Manajemen Proyek', 'date': 'Rabu', 'done': false},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: activities.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          title: Text(activities[index]['name']),
          subtitle: Text(activities[index]['date']),
          value: activities[index]['done'],
          onChanged: (bool? value) {
            setState(() {
              activities[index]['done'] = value!;
            });
          },
        );
      },
    );
  }
}
