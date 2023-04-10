import 'package:flutter/material.dart';
import 'package:tugas/ui/poli_form.dart';
import '../model/poli.dart';
import 'poli_detail.dart';
import 'poli_item.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const PoliForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Poli Anak"),
              ),
            ),
            onTap: () {
              Poli poliAnak = Poli(namaPoli: 'Poli Anak');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliAnak)));
            },
          ),
          const Card(
            child: ListTile(
              title: Text("Poli Kandungan"),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("Poli Gigi"),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("Poli THT"),
            ),
          ),
        ],
      ),
    );
  }
}
