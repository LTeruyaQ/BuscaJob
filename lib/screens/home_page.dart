import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text('Home', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/notifications');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Header(),
          Dashboard(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150'), // Substitua pelo link da imagem do usuário
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bem vinda de volta,',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    'Mariah Gonzalez',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  final List<Map<String, dynamic>> dashboardItems = [
    {'icon': Icons.work_outline, 'label': 'Vagas Disponíveis'},
    {'icon': Icons.article_outlined, 'label': 'Meus Currículos'},
    {'icon': Icons.analytics_outlined, 'label': 'Análise de Currículo - IA'},
    {'icon': Icons.quiz_outlined, 'label': 'Testes'},
    {'icon': Icons.handshake_outlined, 'label': 'Match de Vagas'},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: dashboardItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return DashboardItem(
              icon: dashboardItems[index]['icon'],
              label: dashboardItems[index]['label'],
            );
          },
        ),
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  final IconData icon;
  final String label;

  DashboardItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 40, color: Colors.grey),
              SizedBox(height: 10),
              Text(label, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
