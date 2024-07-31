import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class FooterPage extends StatefulWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  State<FooterPage> createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  int pageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [
        // FodasePage(), HeaderPage(), FodasePage()
        ],
    );
  }

  Widget getFooter() {
    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
          icon: SizedBox(
            width: 30, // Defina o tamanho desejado para largura
            height: 30, // Defina o tamanho desejado para altura
            child: Image.asset('assets/images/icons/conhecimento.png'),
          ),
          label: 'Bestiario',
          activeIcon: SizedBox(
            width: 40, // Defina o tamanho desejado para largura
            height: 40, // Defina o tamanho desejado para altura
            child: Image.asset('assets/images/icons/conhecimento-bold.png'),
          )),
      BottomNavigationBarItem(
        icon: SizedBox(
          width: 60, // Defina o tamanho desejado para largura
          height: 60, // Defina o tamanho desejado para altura
          child: Image.asset('assets/images/Olho_cego.png'),
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
          icon: SizedBox(
            width: 30, // Defina o tamanho desejado para largura
            height: 30, // Defina o tamanho desejado para altura
            child: Image.asset('assets/images/icons/inventario.png'),
          ),
          label: 'Fichas',
          activeIcon: SizedBox(
            width: 40, // Defina o tamanho desejado para largura
            height: 40, // Defina o tamanho desejado para altura
            child: Image.asset('assets/images/icons/inventario-bold.png'),
          )),
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
