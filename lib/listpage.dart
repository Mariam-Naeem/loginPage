import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(10, (i) => "عنصر رقم ${i + 1}");

    return Scaffold(
      appBar: AppBar(title: const Text("الصفحة الرئيسية")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (_, i) {
          return ListTile(
            title: Text(items[i]),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailPage(title: items[i]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;

  const DetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text("تفاصيل: $title", style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}
