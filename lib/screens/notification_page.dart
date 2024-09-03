import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text('Notificações', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Candidatura feita!'),
            subtitle: Text(
                'Sua candidatura foi feita com sucesso e você está participando do processo.'),
          ),
          ListTile(
            title: Text('Meus parabéns!'),
            subtitle: Text(
                'Você foi selecionado para uma entrevista na empresa X. Boa sorte!'),
          ),
        ],
      ),
    );
  }
}
