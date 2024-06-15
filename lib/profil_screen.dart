import 'package:flutter/material.dart';

// menggunakan STL atau statelesswidget
// untuk halaman statis atau tidak ada perubahan data
class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profil"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "nama : budi",
            style: TextStyle(fontSize: 30, color: Colors.blueGrey),
          ),
          SizedBox(
            height: 20,
          ),
          Text("nim"),
          Text("kelas"),
          Card(
            color: Colors.pink,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("Foto"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("edit"),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("hapus"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
