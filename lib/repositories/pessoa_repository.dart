import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../models/pessoa.dart';

class PessoaRepository extends ChangeNotifier{
  List<Pessoa> _tabela = [];

  List<Pessoa> get tabela => _tabela;

  PessoaRepository(){
    _setupDadosPessoa();
  }



  _setupDadosPessoa() async {
    String uri = 'https://gorest.co.in/public/v2/users';

    final response = await http.get(Uri.parse(uri));

    if(response.statusCode == 200){
      final json = jsonDecode(response.body);
      final List<dynamic> pessoas = json['data'];
      print(pessoas);
      }
    }
  }

