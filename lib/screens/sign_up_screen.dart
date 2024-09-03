import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Username/Email',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
                prefixIcon: Icon(Icons.account_circle),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Data de nascimento',
                prefixIcon: Icon(Icons.calendar_today),
              ),
              onTap: () {
                // Implementar picker de data
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Senha',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Repetir Senha',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: true, // Deve ser controlado por um estado real
                  onChanged: (bool? value) {
                    // Implementar ação
                  },
                ),
                Expanded(
                  child: Text(
                    'Aceito os termos de uso e desejo continuar. Saiba mais clicando aqui.',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementar ação de cadastro
              },
              child: Text('Entrar'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Versão 1.0.0'),
                SizedBox(width: 20),
                Text('Powered by Srtn.Co'),
                SizedBox(width: 20),
                Text('Help & Support'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
