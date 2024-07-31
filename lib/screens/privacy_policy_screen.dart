import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LGPD'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Termos de Uso e Política de Privacidade',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Termos de Uso\n\nBem-vindo ao nosso serviço. Estes Termos de Uso regem seu acesso e uso do nosso site e dos serviços fornecidos. Ao acessar ou usar nosso site, você concorda com estes Termos de Uso na íntegra.\n\n'
              '1. Aceitação dos Termos\nAo usar nossos serviços, você concorda em estar vinculado a estes Termos de Uso e a todas as leis e regulamentações aplicáveis. Se você não concorda com algum destes termos, está proibido de usar ou acessar este site.\n\n'
              '2. Modificações dos Termos\nReservamo-nos o direito de revisar os Termos de Uso a qualquer momento sem aviso prévio. Ao usar este site, você concorda em se comprometer com a versão atual destes Termos de Uso.\n\n'
              '3. Uso dos Serviços\nVocê concorda em usar nossos serviços apenas para fins legais e de acordo com os Termos de Uso. É proibido:\n'
              '   a. Usar os serviços de maneira que possa danificar, desativar, sobrecarregar ou prejudicar o site.\n'
              '   b. Tentar obter acesso não autorizado a qualquer parte do site.\n\n'
              '4. Propriedade Intelectual\nTodo o conteúdo incluído no site, como texto, gráficos, logos, ícones de botão, imagens, clipes de áudio, e software, é de nossa propriedade ou de nossos fornecedores de conteúdo e protegido pelas leis de direitos autorais internacionais.\n\n'
              '5. Isenção de Garantias\nO site é fornecido "como está" e "como disponível". Não garantimos que os serviços estarão sempre disponíveis ou que não haverá interrupções. Não nos responsabilizamos por falhas ou erros.\n\n'
              '6. Limitação de Responsabilidade\nEm nenhuma hipótese seremos responsáveis por quaisquer danos diretos, indiretos, incidentais, especiais ou consequenciais decorrentes do uso ou da impossibilidade de uso do site.\n\n'
              '7. Indenização\nVocê concorda em indenizar, defender e isentar nossa empresa, suas afiliadas, diretores, funcionários e agentes de quaisquer reivindicações, perdas, responsabilidades, despesas, danos e custos, incluindo honorários advocatícios razoáveis, decorrentes ou relacionados a qualquer violação destes Termos de Uso ou ao uso dos serviços por você ou por qualquer pessoa que acesse os serviços usando sua conta de internet.\n\n'
              '8. Lei Aplicável\nEstes Termos de Uso são regidos e interpretados de acordo com as leis do país onde estamos sediados, sem dar efeito a quaisquer princípios de conflitos de leis.\n\n'
              '9. Alterações aos Termos de Uso\nPodemos atualizar estes Termos de Uso de tempos em tempos. Quando fizermos isso, revisaremos a data na parte superior desta página. Recomendamos que você revise periodicamente estes Termos de Uso para se manter informado sobre nossos termos e condições de uso.\n\n'
              '10. Contato\nSe você tiver alguma dúvida sobre estes Termos de Uso, entre em contato conosco através do nosso formulário de contato ou pelos meios de comunicação fornecidos em nosso site.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.download),
              label: Text('Download PDF'),
              onPressed: () {
                // Implementar ação de download
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Conta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'Sobre',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/home');
              break;
            case 1:
              Navigator.pushNamed(context, '/settings');
              break;
            case 2:
              Navigator.pushNamed(context, '/privacy-policy');
              break;
          }
        },
      ),
    );
  }
}
