import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navegar para a próxima tela após 3 segundos
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });

    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png', // Certifique-se de que a imagem está no local correto
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
