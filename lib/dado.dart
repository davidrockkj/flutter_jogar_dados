import 'package:flutter/material.dart';

class Dadin extends StatefulWidget {
  final int numeroDadoEsquerda;
  final Function () alterarFacesDados;
  const Dadin({super.key, required this.numeroDadoEsquerda, required this.alterarFacesDados});

  @override
  State<Dadin> createState() => _DadinState();
}

class _DadinState extends State<Dadin> {
  @override
  Widget build(BuildContext context) {
    return Container(
                width: 100,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: InkWell(
                    onTap: widget.alterarFacesDados,
                    child: Image.asset('imagens/dado${widget.numeroDadoEsquerda}.png'),
                  ),
                ),
              );
  }
}