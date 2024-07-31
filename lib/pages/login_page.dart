// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

import 'package:BuscaJob/pages/footer_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool obscureText = true;
  String errorMessage = '';
  double errorSize = 0.03;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
                'assets/images/Eyes-background.png'), // Substitua pelo caminho da sua imagem
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
      Image.asset(
      "assets/images/background.png",
      fit: BoxFit.cover,
      colorBlendMode: BlendMode.dstATop,
    ),
              TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height:  0.03),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: 'Senha',
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.white,
                suffixIcon: IconButton(
                    icon: obscureText
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    }),
              ),
              style: TextStyle(
                fontFamily: 'Bentham',
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 120, 116, 109),
              ),
            ),
            SizedBox(height: 0.02),
            RichText(
              text: TextSpan(
                text: 'Esqueceu a senha?',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, '/RecuperarSenha');
                  },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                ),
                onPressed: (){},
                child: const Text('Conectar',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 2.0),
            RichText(
              text: TextSpan(
                text: 'Crie uma conta',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, '/SignUp');
                  },
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
