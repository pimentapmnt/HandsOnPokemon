import 'package:flutter/material.dart';
import 'package:pokemon/widgets/botao_widget.dart';


class SecondPage extends StatelessWidget {
  final Map<dynamic, dynamic> jsonResponse;
  final String url;
  const SecondPage({super.key, required this.jsonResponse, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Navegação + Pacotes + API',
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text("Nome: ${jsonResponse['name']}", 
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                Text("Tipo: ${jsonResponse['types'][0]['type']['name']}",
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                Text("URL: $url",
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: BotaoWidget(
                texto: 'Voltar',
                funcao: () {
                  Navigator.of(context).pushNamed('/');
                }),
            ),
          ],
        ),
      ),
    );
  }
}