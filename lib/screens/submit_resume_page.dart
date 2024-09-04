import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubmitResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120), // Aumenta a altura do cabeçalho
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF4A55FF), // Cor da barra superior ajustada
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user_placeholder.png'), // Caminho da imagem local
                  radius: 36, // Aumentei o tamanho do avatar
                ),
                SizedBox(width: 10),
                Text(
                  'Adicionar Currículo',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.notifications, color: Colors.white),
                  onPressed: () {
                    // Ação de notificações
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
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Título principal
            Text(
              'Dados profissionais',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            // Subtítulo
            Text(
              'Upload de currículo ou preenchimento manual.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            // Nome
            Text(
              'Nome',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Nome e Sobrenome',
                filled: true,
                fillColor: Color(0xFFF2F2F2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20), // Arredonda as bordas
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Data de nascimento
            Text(
              'Data de nascimento',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Selecione sua data de nascimento',
                suffixIcon: Icon(Icons.calendar_today),
                filled: true,
                fillColor: Color(0xFFF2F2F2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20), // Arredonda as bordas
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: TextInputType.datetime,
              onTap: () {
                // Implementar picker de data
              },
            ),
            SizedBox(height: 20),
            // Formação acadêmica
            Text(
              'Formação acadêmica',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Formação acadêmica',
                filled: true,
                fillColor: Color(0xFFF2F2F2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20), // Arredonda as bordas
                  borderSide: BorderSide.none,
                ),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            // Experiências
            Text(
              'Experiências',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Experiências',
                filled: true,
                fillColor: Color(0xFFF2F2F2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20), // Arredonda as bordas
                  borderSide: BorderSide.none,
                ),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementar upload de currículo
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Color(0xFF4A55FF), // Cor do botão ajustada
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Arredonda as bordas do botão
                ),
              ),
              child: Text(
                'Upload',
                style: TextStyle(color: Colors.white), // Fonte branca no botão
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
              label: Text(
                'Enviar currículo ou integrar com LinkedIn',
                style: TextStyle(color: Colors.white), // Fonte branca no botão
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Color(0xFF4A55FF), // Cor do botão ajustada
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Arredonda as bordas do botão
                ),
              ),
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
