import 'package:flutter/material.dart';

class AvailableJobsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscar disponíveis'),
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
          _buildJobCard(context, 'Dev Front-end (Empresa A)', 'Pending'),
          _buildJobCard(context, 'Dev Front-end (Catho)', 'Aplicar'),
          _buildJobCard(context, 'Dev Front-end (Empresa X)', 'Aplicar'),
          _buildJobCard(context, 'Emergency Leave', 'Approved'),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildJobCard(BuildContext context, String title, String status) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text('1 setembro 2023 - 2 setembro 2023'),
        trailing: ElevatedButton(
          onPressed: () {
            if (status == 'Aplicar') {
              Navigator.pushNamed(context, '/job-details');
            }
          },
          child: Text(status),
          style: ElevatedButton.styleFrom(
            backgroundColor: _getStatusColor(status),
          ),
        ),
      ),
    );
  }

  Color? _getStatusColor(String status) {
    switch (status) {
      case 'Pending':
        return Colors.orange;
      case 'Approved':
        return Colors.green;
      case 'Aplicar':
      default:
        return null; // Usa a cor padrão do botão
    }
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
