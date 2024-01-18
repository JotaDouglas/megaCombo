// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PaineldeNumeros extends StatefulWidget {
  final List<int> listaNumeros;
  const PaineldeNumeros({required this.listaNumeros, super.key});

  @override
  State<PaineldeNumeros> createState() => _PaineldeNumerosState();
}

class _PaineldeNumerosState extends State<PaineldeNumeros> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for(int i = 0; i < 6; i++)
            CircleAvatar(
            backgroundColor: Colors.grey[900],
            radius: 25,
            child: Text(widget.listaNumeros.isEmpty?'?': widget.listaNumeros[i].toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),          
          
        ],
      ),
    );
  }
}
