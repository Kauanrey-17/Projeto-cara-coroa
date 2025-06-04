import 'package:app/main.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  final String imagem;
  const Jogar({super.key, required this.imagem});
  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  
  void Voltar(){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=>Home())
      );
  }
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;
    if (widget.imagem == "cara"){
      caminhoImagem = "imagens/moeda_cara.png";
    }else{
       caminhoImagem = "imagens/moeda_coroa.png";
    }
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              child: Image.asset("imagens/botao_voltar.png"),
              onTap: Voltar,
            )
          ],
        ),
      ),
    );
  }
}