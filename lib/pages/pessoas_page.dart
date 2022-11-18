import 'package:flutter/material.dart';
import 'package:flutter_sti/pages/pessoas_detalhes_page.dart';
import 'package:flutter_sti/repositories/pessoa_repository.dart';
import '../models/pessoa.dart';

class PessoasPage extends StatefulWidget {
  late List<Pessoa> tabela;
  PessoasPage({Key? key, required this.tabela}) : super(key: key);

  @override
  State<PessoasPage> createState() => _PessoasPageState(tabela: tabela);
}

class _PessoasPageState extends State<PessoasPage> {
  late List<Pessoa> tabela;
  _PessoasPageState({Key? key, required this.tabela});

  mostrarDetalhes(Pessoa pessoa) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => PessoasDetalhesPage(pessoa: pessoa),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Usuários'),
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int pessoa) {
            return ListTile(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              leading: SizedBox(
                child: Image.asset(tabela[pessoa].status),
                width: 25,
              ),
              title: Text(
                tabela[pessoa].nome,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              selected: false,
              selectedTileColor: Colors.indigo[50],
              onTap: () => mostrarDetalhes(tabela[pessoa]),
            );
          },
          padding: EdgeInsets.all(16),
          separatorBuilder: (_, __) => Divider(),
          itemCount: tabela.length,
        ));
  }
}
