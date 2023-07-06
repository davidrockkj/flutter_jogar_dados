// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_jogar_dados/dado.dart';

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
  int numeroDadoMeio = 1;
  int numeroDadoDireita = 1;
  int qtdDados = 0;

  int alterarFacesDados() {
    return Random().nextInt(6) + 1;
  }

  void randomizas() {
    setState(() {
      numeroDadoEsquerda = Random().nextInt(6) + 1;
      numeroDadoMeio = Random().nextInt(6) + 1;
      numeroDadoDireita = Random().nextInt(6) + 1;
    });
  }

  void numDados(int value) {
    setState(() {
      if (qtdDados == value) {
        qtdDados = 0;
      } else {
        qtdDados = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Wrap(
              children: List.generate(qtdDados, (index) {
            return Dadin(
                numeroDadoEsquerda: alterarFacesDados(),
                alterarFacesDados: randomizas);
              }).toList()
              // [
              //   Dadin(numeroDadoEsquerda: numeroDadoEsquerda, alterarFacesDados: alterarFacesDados),
              //   Dadin(numeroDadoEsquerda: numeroDadoMeio, alterarFacesDados: alterarFacesDados),
              //   Dadin(numeroDadoEsquerda: numeroDadoDireita, alterarFacesDados: alterarFacesDados),
              // ],
              ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    numDados(1);
                  },
                  child: const Text('1 Dado')),
              ElevatedButton(
                  onPressed: () {
                    numDados(2);
                  },
                  child: const Text('2 Dados')),
              ElevatedButton(
                  onPressed: () {
                    numDados(3);
                  },
                  child: const Text('3 Dados')),
            ],
          )
        ],
      ),
    );
  }
}
