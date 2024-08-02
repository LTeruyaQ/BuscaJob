import 'package:flutter/material.dart';

class JobDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vaga disponível'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detalhes da Vaga',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Dev Front-end (Empresa c)'),
            SizedBox(height: 10),
            Text('PENDENTE'),
            SizedBox(height: 20),
            Text('Descrição:'),
            SizedBox(height: 10),
            Text('Descrição detalhada da vaga aqui.'),
            SizedBox(height: 20),
            Text('Contato:'),
            ListTile(
              title: Text('Shawn Parkson'),
              subtitle: Text('shawnparkson@mail.com'),
              trailing: Icon(Icons.phone),
              onTap: () {
                // Ação para ligar ou enviar mensagem
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Download do PDF
              },
              child: Text('Download PDF'),
            ),
          ],
        ),
      ),
    );
  }
}
