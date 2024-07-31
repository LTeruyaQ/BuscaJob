import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'), // Substitua pelo seu logo
            Text(
              'BuscaJob',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text('Ei, você está de volta!\nÉ hora de achar a vaga ideal!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login-details');
              },
              child: Text('Vamos!'),
            ),
          ],
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
