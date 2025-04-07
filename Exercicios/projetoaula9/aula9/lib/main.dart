import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // Função runApp que executa a classe com a Tela do aplicativo
  // MaterialApp permite chamar o widget da tela
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Telaprincipal(),
  ));
}

class Telaprincipal extends StatelessWidget {
  const Telaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario de Endereço"),
        backgroundColor: const Color.fromARGB(255, 243, 33, 33),
      ),
      body: Campotexto(),
    );
  }
}


class Campotexto extends StatefulWidget {
  const Campotexto({super.key});

  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {

  TextEditingController endereco = TextEditingController();
  TextEditingController cidade = TextEditingController();
  TextEditingController numero = TextEditingController();


  _limpar() {
    setState(() {
      endereco.text = "";
      cidade.text = "";
      numero.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
   
        TextField(
          decoration: InputDecoration(
            labelText: "Digite seu endereço",
          ),
          controller: endereco,
        ),
        
  
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Digite sua cidade",
            ),
            controller: cidade,
          ),
        ),
        
     
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            labelText: "Digite o número",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          controller: numero,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                print("Endereço: ${endereco.text}");
                print("Cidade: ${cidade.text}");
                print("Número: ${numero.text}");
                setState(() {
                  endereco.text;
                  cidade.text;
                  numero.text;
                });
              },
              child: Text("Exibir"),
            ),
            ElevatedButton(
              onPressed: _limpar,
              child: Text("Limpar"),
            ),
          ],
        ),


        Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 255, 0, 0),
          ),
          child: Text(
            "Endereço: ${endereco.text}",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          width: 300,
          height: 50,
          color: const Color.fromARGB(255, 255, 0, 0),
          child: Text(
            "Cidade: ${cidade.text} - Número: ${numero.text}",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
