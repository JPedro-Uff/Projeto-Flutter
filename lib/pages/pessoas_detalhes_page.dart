import 'package:flutter/material.dart';
import 'package:flutter_sti/models/pessoa.dart';

class PessoasDetalhesPage extends StatefulWidget {
  Pessoa pessoa;
  PessoasDetalhesPage({Key? key, required this.pessoa}) : super(key: key);

  @override
  State<PessoasDetalhesPage> createState() => _PessoasDetalhesPageState();
}

class _PessoasDetalhesPageState extends State<PessoasDetalhesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Publicações do usuário'),
      ),
      body: Padding(
        padding: EdgeInsets.all(26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Perfil do Usuário',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
            ),),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 10),
              child: Text(
                widget.pessoa.nome,
                style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.w400
                ),
              ),
            ),

            Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(children: [
                  Text(
                    widget.pessoa.email,
                    style: TextStyle(fontSize: 17),
                  )
                ]),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Id do usuário',
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  (widget.pessoa.id).toString(),
                  style: TextStyle(fontSize: 25),
                ),
              ],

            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Center(
                child: Text(
                  'Publicações:',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
