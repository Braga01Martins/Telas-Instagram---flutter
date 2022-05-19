// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_instagram_projeto_02/postagem/postagem.dart';
import 'package:flutter_instagram_projeto_02/stores/stores.dart';

class TelaInicialInstagram extends StatelessWidget {
  const TelaInicialInstagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    mediaQuery.removePadding();
    //final statusBar = mediaQuery.padding.top;
    //final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: mediaQuery.size.width * 0.1,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.asset(
                  'assets/images/logo_instagram.png',
                  fit: BoxFit.contain,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_down, size: 20,),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.messenger_outline_outlined),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stores(),
            Divider(color: Colors.grey.shade900),
            Postagem(),
          ],
        ),
      ),
    );
  }
}