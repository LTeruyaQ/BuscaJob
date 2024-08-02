import 'package:flutter/material.dart';

class TestsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testes'),
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
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildTestCard('Entrevista técnica (Empresa A)',
              '11ago 2023 - 12:30 (daqui a 2d)', 'Pendentes'),
          _buildTestCard('Teste de lógica (Catho)',
              '10ago 2023 - 12:30 (Concluído)', 'Concluído'),
          _buildTestCard('Teste técnico Front-End (Empresa X)',
              '09ago 2023 - 12:30 (Concluído)', 'Concluído'),
          _buildTestCard('Teste de personalidade',
              '09ago 2023 - 12:30 (Concluído)', 'Concluído'),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildTestCard(String title, String subtitle, String status) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(
          status,
          style: TextStyle(
            color: status == 'Pendentes' ? Colors.orange : Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
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
