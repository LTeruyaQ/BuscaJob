import 'package:flutter/material.dart';

class AppliedJobSummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vaga aplicada'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushNamed(context, '/notifications');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
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
            Text('Match'),
            SizedBox(height: 20),
            Text('Descrição:'),
            SizedBox(height: 10),
            Text('Descrição detalhada da vaga aqui.'),
            SizedBox(height: 20),
            Text('Contato:'),
            ListTile(
              title: Text('Eduardo Costa'),
              subtitle: Text('eduardo.costa@gmail.com'),
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
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          label: 'Adicionar Currículo',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt),
          label: 'Vagas',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/home');
            break;
          case 1:
            Navigator.pushNamed(context, '/submit-resume');
            break;
          case 2:
            Navigator.pushNamed(context, '/available-jobs');
            break;
        }
      },
    );
  }
}
