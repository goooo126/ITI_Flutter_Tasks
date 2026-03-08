import 'package:flutter/material.dart';
import 'secure_storage.dart';
import 'pin_page.dart';

class HomePage extends StatelessWidget {

  final String email;

  const HomePage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {

    final storage = SecureStorageService();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              email,
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () async {

                await storage.logout();

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LoginPage(),
                  ),
                );
              },
              child: const Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}