// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_instagram_projeto_02/barra_de_navegacao/loja_page.dart';
import 'package:flutter_instagram_projeto_02/barra_de_navegacao/perfil_page.dart';
import 'package:flutter_instagram_projeto_02/barra_de_navegacao/pesquisar_page.dart';
import 'package:flutter_instagram_projeto_02/barra_de_navegacao/reels_videos_page.dart';
import 'package:flutter_instagram_projeto_02/home_page/tela_inicial_instagram.dart';

class BarraDeNavegacao extends StatefulWidget {
  const BarraDeNavegacao({Key? key}) : super(key: key);

  @override
  State<BarraDeNavegacao> createState() => _BarraDeNavegacaoState();
}

class _BarraDeNavegacaoState extends State<BarraDeNavegacao> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        currentIndex: indice,
        onTap: (index) {
          setState(() {
            indice = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline_sharp),
            label: '',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel_outlined),
            label: '',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: '',
            backgroundColor: Colors.black,
          ),
        ],
      ),
      body: IndexedStack(
        index: indice,
        children: [
          TelaInicialInstagram(),
          PesquisarPage(),
          ReelsVideosPage(),
          LojaPage(),
          PerfilPage(),
        ],
      ),
    );
  }
}
