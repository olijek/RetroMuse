import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final username = TextEditingController();
  final email = TextEditingController();
  final pass = TextEditingController();

  Future register() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("username", username.text);
    await prefs.setString("email", email.text);
    await prefs.setString("password", pass.text);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text("Create account",
                style: TextStyle(fontSize: 22)),

            const SizedBox(height: 20),

            TextField(
              controller: username,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: email,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: pass,
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: register,
              child: const Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}