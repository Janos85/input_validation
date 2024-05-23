import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  // Attribute
  // (keine)

  // Konstruktor
  const FormScreen({super.key});

  // Methoden
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Form(
            child: Column(children: [
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Email"),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: validateEmail,
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Passwort"),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: validatePw,
              ),
              const SizedBox(height: 32),
              FilledButton(
                onPressed: () {},
                child: const Text("Login"),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  String? validateEmail(String? input) {
    // TODO: implementiere hier die Logik, die im Task Sheet beschrieben ist
    if (input == null || input.isEmpty) {
      return "email can not be empty";
    }
    if (input.length < 6) {
      return "email must be longer than 6 charachter";
    }
    if (!input.contains("@")) {
      return "email must have \"@\" in it";
    }
    if (!(input.endsWith(".com") || input.endsWith(".de"))) {
      return 'email must contain ".com" or".de"';
    }

    return null;
  }

  String? validatePw(String? input) {
    // TODO: implementiere hier die Logik, die im Task Sheet beschrieben ist
    if (input == null || input.isEmpty) {
      return "pasword can´t be empty ";
    }
    if (input.length < 6 || input.length > 12) {
      return "Password need to be betwine 6-12 charachters";
    }
    return null;
  }
}
