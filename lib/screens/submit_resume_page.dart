import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubmitResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Currículo'),
        actions: [
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
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nome e Sobrenome'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Data de nascimento'),
              keyboardType: TextInputType.datetime,
              onTap: () {
                // Implementar picker de data
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Formação acadêmica'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Experiências'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementar upload de currículo
              },
              child: Text('Upload'),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
              label: Text('Enviar currículo ou integrar com LinkedIn'),
              onPressed: () {
                // Implementar integração com LinkedIn
              },
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
