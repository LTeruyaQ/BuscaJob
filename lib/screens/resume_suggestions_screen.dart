import 'package:flutter/material.dart';

class ResumeSuggestionsScreen extends StatelessWidget {
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
        child: ListView(
          children: [
            Center(
              child: Text(
                'Avaliação',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                '6.30',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildMetricCard('Storytelling', 'Coerência do campo Sobre mim',
                'Muito Bom', Colors.green),
            _buildMetricCard('Competências', 'Nível das suas Habilidades',
                'Regular', Colors.orange),
            _buildMetricCard(
                'Paleta de cores',
                'Composição de cores do seu currículo',
                'Regular',
                Colors.orange),
            _buildMetricCard(
                'Palavras-chave',
                'Palavras mais utilizadas em buscas para o seu tipo de perfil',
                'Ruim',
                Colors.red),
            SizedBox(height: 20),
            Text(
              'Sugestões de Melhorias:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildSuggestion(
                'Engenheiro de Interface - Desenvolvedor Front-End'),
            _buildSuggestion('Desenvolvedor Geral - Desenvolvedor Full Stack'),
            _buildSuggestion(
                'Familiaridade com Java - Experiência em JavaScript'),
            _buildSuggestion(
                'Uso de Plugins Web - Conhecimento em frameworks web'),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildMetricCard(
      String title, String subtitle, String rating, Color color) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            rating,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSuggestion(String suggestion) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(suggestion),
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
