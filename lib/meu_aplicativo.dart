import 'package:flutter/material.dart';
import 'package:flutter_sti/pages/pessoas_page.dart';

import 'models/pessoa.dart';

class MeuAplicativo extends StatelessWidget {
  List<Pessoa> tabela;
  MeuAplicativo({Key? key, required this.tabela}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SplashApi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: PessoasPage(tabela: tabela),
    );
  }
}
