import 'package:flutter/material.dart';

class MatchJobsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match de Vagas'),
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
          _buildMatchCard('Dev Front-end (Empresa A)', 'Pendentes'),
          _buildMatchCard('Dev Front-end (Catho)', 'Match'),
          _buildMatchCard('Dev Front-end (Empresa X)', 'Match'),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildMatchCard(String title, String status) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text('Detalhes sobre a vaga.'),
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
