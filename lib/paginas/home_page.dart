import 'package:flutter/material.dart';
import 'package:pokemon/paginas/second_page.dart';
import 'package:http/http.dart' as http;
import '../widgets/botao_widget.dart';
import 'dart:math';
import 'dart:convert' as convert;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegação + pacote + API',
        style: TextStyle(fontWeight: FontWeight.bold)
        ),
      ),
      body: Center(
        child: BotaoWidget(
            texto: 'PEGAR POKEMON',
            funcao: () async {
            var random = Random();
            var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$r');
            String urlString = 'https://pokeapi.co/api/v2/pokemon/$r';
            var response = await http.get(url);
            if(response.statusCode == 200) {
              var jsonResponse = convert.jsonDecode(response.body) as Map<dynamic, dynamic>;
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage(jsonResponse: jsonResponse, url: urlString)));
            }
          },
        ),
      )
      
    );
  }
}
