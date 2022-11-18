import 'package:flutter/material.dart';
import 'package:flutter_sti/pages/pessoas_page.dart';
import 'meu_aplicativo.dart';
import 'package:flutter_sti/models/pessoa.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

getLista() async {
  http.Response response;
  response = await http.get(Uri.parse("https://gorest.co.in/public/v2/users"));
  List<dynamic> listajson = jsonDecode(response.body);
  return listajson;
}

tabelaAdd() async {
  List<Pessoa> tabela = [];
  List<dynamic> listajson = await getLista();
  listajson.forEach((k) {
    if (k['status'] == 'active') {
      k['status'] = 'images/greenDot.png';
    } else {
      k['status'] = 'images/redDot.png';
    }
    Pessoa pessoanova = Pessoa(
        id: k['id'],
        nome: k['name'],
        email: k['email'],
        genero: k['gender'],
        status: k['status']);
    tabela.add(pessoanova);
  });
  return tabela;
}

void main() async {
  List<Pessoa> tabela = await tabelaAdd();
  runApp(MeuAplicativo(tabela: tabela));
}

