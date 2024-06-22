import 'package:flutter/material.dart';
import 'package:myapp/kontak_screen.dart';
import 'package:get/get.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  String label = "label kosong";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "username",
                  hintText: "masukkan username anda"),
            ),
            ElevatedButton(
              onPressed: () {
                // untuk pindah halaman
                Get.to(()=>KontakScreen());
                setState(() {
                  label = usernameController.text;
                });
              },
              child: Text("Login"),
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}
