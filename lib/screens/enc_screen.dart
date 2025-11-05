import 'package:flutter/material.dart';

class EncScreen extends StatelessWidget {
  const EncScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> entries = [
      {'title': 'Electric Guitar', 'desc': 'A string instrument that uses pickups to convert vibration into sound.'},
      {'title': 'Vinyl Record', 'desc': 'An analog sound storage medium made of polyvinyl chloride.'},
      {'title': 'Amplifier', 'desc': 'An electronic device that increases the power of audio signals.'},
      {'title': 'Synthesizer', 'desc': 'An instrument that generates audio signals through electronic means.'},
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: entries.length,
      itemBuilder: (context, index) {
        final item = entries[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: ListTile(
            leading: const Icon(Icons.music_note, color: Colors.deepPurple),
            title: Text(
              item['title']!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(item['desc']!),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
        );
      },
    );
  }
}