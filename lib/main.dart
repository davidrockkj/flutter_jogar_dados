// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'dart:math';

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

class Dadoos extends StatefulWidget {
  const Dadoos({super.key});

  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  // Geramos os valores para as variáveis
  int numeroDadoEsquerda = 1;
  int numeroDadoDireita = 1;

  void alterarFacesDados() {
    setState(() {
      numeroDadoEsquerda = Random().nextInt(6) + 1;
      print('Dado esquerdo = $numeroDadoEsquerda');
      numeroDadoDireita = Random().nextInt(6) + 1;
      print('Dado direito = $numeroDadoDireita');
    });
  }

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
                  alterarFacesDados();
                },
                child: Image.asset('imagens/dado$numeroDadoEsquerda.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child: TextButton(
                onPressed: () {
                  alterarFacesDados();
                },
                child: Image.asset('imagens/dado$numeroDadoDireita.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
