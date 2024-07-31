import 'package:flutter/material.dart';

class SelectResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Análise de Currículo'),
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
              'Escolha um currículo já cadastrado:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                  'Utilizar último currículo cadastrado: CV-01-03-2024.pdf'),
              tileColor: Colors.blue.shade100,
              onTap: () {
                Navigator.pushNamed(context, '/resume-metrics');
              },
            ),
            SizedBox(height: 20),
            Text(
              'Envie um novo currículo:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  // Implementar upload de currículo
                },
                child: Container(
                  color: Colors.grey.shade200,
                  child: Center(
                    child: Text('Upload your files'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementar ação de download
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
          label: 'Aplicar',
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
            Navigator.pushNamed(context, '/apply');
            break;
          case 2:
            Navigator.pushNamed(context, '/jobs');
            break;
        }
      },
    );
  }
}
