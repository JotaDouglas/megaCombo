// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PaineldeNumeros extends StatelessWidget {
  final List<int> listaNumeros;
  const PaineldeNumeros({required this.listaNumeros, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[900],
            radius: 25,
            child: Text(listaNumeros.isEmpty?'?': listaNumeros[0].toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[900],
            radius: 25,
            child: Text(listaNumeros.isEmpty?'?': listaNumeros[1].toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[900],
            radius: 25,
            child: Text(listaNumeros.isEmpty?'?': listaNumeros[2].toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[900],
            radius: 25,
            child: Text(listaNumeros.isEmpty?'?': listaNumeros[3].toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[900],
            radius: 25,
            child: Text(listaNumeros.isEmpty?'?': listaNumeros[4].toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[900],
            radius: 25,
            child: Text(listaNumeros.isEmpty?'?': listaNumeros[5].toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
