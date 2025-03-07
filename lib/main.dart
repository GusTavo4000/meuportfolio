import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Portfólio do Gu')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Olá, eu sou o Gustavo!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Sou um desenvolvedor interessado em Flutter, robótica e IA. Este é meu portfólio!',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Text(
              'Projetos',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    title: Text('📱 App de Finanças com IA'),
                    subtitle: Text('Um aplicativo para gerenciar suas finanças com inteligência artificial.'),
                  ),
                  ListTile(
                    title: Text('🤖 Robô de Mini Sumô'),
                    subtitle: Text('Desenvolvimento de um robô autônomo para competições.'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Contato',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.link),
                  onPressed: () {}, // Adicione links reais depois
                ),
                const Text('LinkedIn / GitHub / Email'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
