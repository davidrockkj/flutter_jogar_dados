import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: const Center(child: Text('Dadoos')),
          backgroundColor: Colors.teal.shade900,
        ),
        body: const Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatelessWidget {
  const Dadoos({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: TextButton(
                onPressed: () {
                  print('Botão esquerdo pressionado');
                },
                child: Image.asset('imagens/dado1.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child: TextButton(
                onPressed: () {
                  print('Botão direito pressionado');
                },
                child: Image.asset('imagens/dado2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
