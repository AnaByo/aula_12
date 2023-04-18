import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'App frases aleatórias',
    home: frases(),
  ));
}
class frases extends StatefulWidget{
  const frases({Key? key}) : super(key: key);
  @override
  State<frases> createState() => _frasesState();
}
class _frasesState extends State<frases>{
  var _frases = [
    'Quando o bem se ergue, o MAOkai.',
    'Disseram que a Nida não sabia ler, mais a Nida Lee Sin.',
    'Aquele cara é um GARENhão.',
    'Porque o KhaZix tem asas? Porque ele é jungler, e RedBlue te da asas.',
    'Jogo de Darius, já o Tonny, Rammus.',
    'Parem de me xingar, eu não Fizz nada.',
    'As piadas foram meio Shengraça.',
    'Braum faz piadas e o Master Yi.',
    'Pra trocar o item, Sona loja',
    'Como o Lucian ataca os inimigos? Ka arma.',
  ];
  var _frasesGerada = 'Gerador de frases abaixo!';
  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState((){
      _frasesGerada = _frases[numeroSorteado];
    });
  }
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white30,
      appBar: AppBar(
        title: Text('LolComic',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),

        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orangeAccent,
                Colors.orangeAccent.shade100,
                Colors.black,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: EdgeInsets.only(left:20, top:70, right:20, bottom:20 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('img/logo.png'
              ),
              Text(_frasesGerada,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(
                    primary: Colors.yellow[800],
                  ),
                onPressed: _gerarFrase,
                child: Text('New Phrase',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}