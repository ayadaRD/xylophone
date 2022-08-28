import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  player (int number){
    final audio = Audio.load('assets/note${number}.wav');
    audio.play();
    audio.dispose();
  }

  Widget key_builder(int number, Color color){

    return Expanded(
      child: new FlatButton(
        onPressed: (){player(number);}, 
        child: Text(''), 
        color: color,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                //1
                 key_builder(1, Colors.red),

                //2
                key_builder(2, Colors.deepOrangeAccent,),

                //3
                key_builder(3, Colors.amberAccent,),

                //4
                key_builder(4, Colors.lightGreen,),

                //5
                key_builder(5, Colors.green,),

                //6
                key_builder(6, Colors.blue,),

                //7
                key_builder(7, Colors.purple,),

              ],
            ),

          ),
        ),
      ),
    );
  }
}
