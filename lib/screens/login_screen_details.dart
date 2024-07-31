import 'package:flutter/material.dart';

class LoginScreenDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'), // Substitua pelo seu logo
              Text(
                'BuscaJob',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text('Bem vindo de volta!'),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Username/Email'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Version 1.0.0'),
            Text('Powered by SetCo.'),
            Text('Help & Support'),
          ],
        ),
      ),
    );
  }
}
