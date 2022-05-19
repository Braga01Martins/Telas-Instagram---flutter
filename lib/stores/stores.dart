// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Stores extends StatelessWidget {
  const Stores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        AvatarImage(
                      urlImage:
                          'https://conteudo.imguol.com.br/c/esporte/b8/2022/03/10/neymar-durante-partida-entre-psg-e-real-madrid-na-liga-dos-campeoes-1646926708591_v2_900x506.jpg.webp'),
                        AoVivo(),
                      ],
                    ),
                  ),
                  Text('Neymar J.', style: TextStyle(color: Colors.white, fontSize: 12),),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0, top: 8.0, bottom: 8.0),
                    child: AvatarImage(
                      urlImage:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Zlatan_Ibrahimovi%C4%87_June_2018.jpg/250px-Zlatan_Ibrahimovi%C4%87_June_2018.jpg',
                    ),
                  ),
                  Text('Zatlan Ibra...', style: TextStyle(color: Colors.white, fontSize: 12),),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0, bottom: 8.0),
                    child: AvatarImage(
                        urlImage:
                            'https://www.saoluisdofuturo.com.br/wp-content/uploads/2020/02/images-2.jpg'),
                  ),
                  Text('CR7', style: TextStyle(color: Colors.white, fontSize: 12),),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0, bottom: 8.0),
                    child: AvatarImage(
                        urlImage:
                            'https://i.pinimg.com/originals/a5/6a/17/a56a172bc4d34466c7212d524017754d.png'),
                  ),
                  Text('Mbappé', style: TextStyle(color: Colors.white, fontSize: 12),),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0, bottom: 8.0),
                    child: AvatarImage(
                        urlImage:
                            'https://www.milanlive.it/wp-content/uploads/2021/10/tonali-sandro.jpg'),
                  ),
                  Text('Tonali', style: TextStyle(color: Colors.white, fontSize: 12),),
                ],
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

class AvatarImage extends StatelessWidget {
  const AvatarImage({Key? key, required this.urlImage}) : super(key: key);
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          //container externo para fazer as bordas gradientes.
          width: 70,
          height: 70,
          padding: EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.redAccent,
                Colors.purple,
              ],
              begin: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 66,
          height: 66,
          //padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          // container qeu ficará a imagem.
          width: 65,
          height: 65,
          padding: EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
      ],
    );
  }
}

class AoVivo extends StatelessWidget {
  const AoVivo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          height: 18,
          child: Text(
            'AO VIVO',
            style: TextStyle(fontSize: 7, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
