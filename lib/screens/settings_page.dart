import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text('Configurações', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.close, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Header(),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Editar perfil'),
                  trailing: Icon(Icons.edit),
                ),
                ListTile(
                  title: Text('Configurações do app'),
                  trailing: Icon(Icons.settings),
                ),
                ListTile(
                  title: Text('Privacidade'),
                  trailing: Icon(Icons.privacy_tip),
                ),
              ],
            ),
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
      child: Row(
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
    );
  }
}
