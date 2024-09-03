import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreenDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
          ),
          child: Column(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset('assets/Images/BackGround.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text('Bem vindo de volta!'),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(labelText: 'Username/Email'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Senha'),
                      obscureText: true,
                    ),
                    SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Text('Entrar'),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Esqueceu a senha?',
                        style: TextStyle(
                          fontFamily: 'Bentham',
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 120, 116, 109),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, '/RecuperarSenha');
                          },
                      ),
                    ),
                    const SizedBox(height: 2.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Version 1.0.0'),
            Text('Powered by SetCo.'),
            Text('Help & Support'),
          ],
        ),
      ),
    );
  }
}
