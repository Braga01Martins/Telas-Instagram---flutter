// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Postagem extends StatelessWidget {
  const Postagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    mediaQuery.removePadding();
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              PostagemCard(),
              PostagemCard(),
            ],
          ),
        ),
      ],
    );
  }
}

class PostagemCard extends StatelessWidget {
  const PostagemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    mediaQuery.removePadding();

    return Stack(
      children: [
        Container(
          height: mediaQuery.size.width * 1.6195,
          width: mediaQuery.size.width,
          color: Colors.black,
          child: Column(
            children: [
              Container(
                width: mediaQuery.size.width,
                height: mediaQuery.size.width * 0.12,
                color: Colors.black,
                child: Row(
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://conteudo.imguol.com.br/c/esporte/30/2019/07/06/lionel-messi-da-argentina-atua-na-partida-contra-o-chile-valida-pela-disputa-de-terceiro-lugar-da-copa-america-na-arena-corinthians-1562440824029_v2_450x600.jpg'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lionel.messi ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170.0),
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_control_sharp),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: mediaQuery.size.width,
                height: mediaQuery.size.height * 0.580,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://www.lance.com.br/files/article_main/uploads/2022/04/16/625b0e6098223.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: mediaQuery.size.width,
                height: mediaQuery.size.height * 0.178,
                color: Colors.black,
                child: Column(children: [
                  Row(
                    children: [
                      IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),
                      IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: Icon(Icons.messenger_outline_rounded),
                      ),
                      IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: Icon(Icons.send_rounded),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '95.567 curtidas',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Lionel.messi ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Lorem ipsum dolor sit dolor ipsum',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0, top: 2.0, right: 2.0, bottom: 8.0),
                        child: Text(
                          'Ver todos os 6800 comentários',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  Row(children: [
                    Text('Há 2 horas', style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey, fontWeight: FontWeight.w400),),
                    Text(' - '),
                    Text('Ver tradução', style: TextStyle(
                            fontSize: 10,
                            color: Colors.white, fontWeight: FontWeight.w400),),
                  ],),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
