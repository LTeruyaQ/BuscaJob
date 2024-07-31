import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HeaderPage extends StatefulWidget {
  const HeaderPage({Key? key}) : super(key: key);

  @override
  State<HeaderPage> createState() => _HeaderPageState();
}

class _HeaderPageState extends State<HeaderPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
      appBar: AppBar(
        title: const Text(''), // Título do seu aplicativo
        backgroundColor: Colors.black, // Cor de fundo do cabeçalho
        centerTitle: true, // Centralizar o título
        elevation: 0, // Remover sombra
      ),
      body: getHeader(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [],
    );
  }

  Widget getHeader() {
    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
          icon: SizedBox(
            width: 30, // Defina o tamanho desejado para largura
            height: 30, // Defina o tamanho desejado para altura
            child: Image.asset('assets/images/icons/interpretacao-de-papeis.png'),
          ),
          label: 'O Mestre',
          activeIcon: SizedBox(
            width: 40, // Defina o tamanho desejado para largura
            height: 40, // Defina o tamanho desejado para altura
            child: Image.asset('assets/images/icons/interpretacao-de-papeis-bold.png'),
          )),
      BottomNavigationBarItem(
          icon: SizedBox(
            width: 30, // Defina o tamanho desejado para largura
            height: 30, // Defina o tamanho desejado para altura
            child:
                Image.asset('assets/images/icons/vencedora.png'),
          ),
          label: 'Os Players',
          activeIcon: SizedBox(
            width: 40, // Defina o tamanho desejado para largura
            height: 40, // Defina o tamanho desejado para altura
            child: Image.asset(
                'assets/images/icons/vencedora-bold.png'),
          ))
    ];

    return BottomNavigationBar(
      items: items,
      type: BottomNavigationBarType.fixed,
      currentIndex: pageIndex,
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.white,
      onTap: (index) {
        setState(() {
          pageIndex = index;
        });
      },
    );
  }
}
