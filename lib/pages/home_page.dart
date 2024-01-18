// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:megacombo/components/six_numbers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> valores = [];
  int atual = 0;
  bool vizualizarLista = true;

  void calcularNumeros() {
    setState(() {
      valores = [];
    });
    //gerar e adicionar os valores na lista
    for (int valor = 0; valor < 6; valor++) {
      atual = Random().nextInt(59);

      //teste se o valor é igual a zero ou se já existe na lista
      while (atual == 0 && valores.contains(atual)) {
        atual = Random().nextInt(59);
      }

      valores.add(atual);
    }

    //ordenar a lista em ordem alfabetica
    valores.sort();

    for (int i = 0; i < valores.length; i++) {
      print(valores[i]);
    }
  }
  verLista(){
    setState(() {
      vizualizarLista = !vizualizarLista;
    });
    print(vizualizarLista);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MEGA COMBO',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        actions: [IconButton(onPressed: () => verLista(), icon: Icon(Icons.list, color: Colors.white,))],
      ),
      body: vizualizarLista?Column(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(
                'assets/img/logo2.png',
                height: 100,
                width: 200,
              )),
          PaineldeNumeros(
              listaNumeros: valores), //trocar os dados quando forem inseridos
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[700]),
                      onPressed: () {
                        calcularNumeros();
                        print(valores);
                      },
                      child: Text(
                        'SORTEAR',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[700]),
                      onPressed: () => calcularNumeros(),
                      child: Text(
                        'SALVAR',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ):Text('Hello World'),
    );
  }
}
