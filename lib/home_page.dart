import 'dart:html';

import 'package:chat_app/feature_box.dart';
import 'package:chat_app/pallete.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final speechToText =SpeechToText();
  @override
  void initState(){
    super.initState();
    initSpeechToText();
  }
  Future<void> initSpeechToText() async{
  await speechToText.initialize();
  //initSpeechToText();
  setState(() { });

  }

  /// This is the callback that the SpeechToText plugin calls when
  /// the platform returns recognized words.
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('chat app'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 4),
                    decoration: const BoxDecoration(
                      color: Pallete.assistantCircleColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  height: 123,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/virtualAssistant.png'),
                    )
                  ),
                )
              ]
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
                  top: 30,
                ),
                decoration: BoxDecoration(
                  border: Border.all( 
                    color: Pallete.borderColor,
                  ),
                  borderRadius: BorderRadius.circular(20).copyWith(
                    topLeft: Radius.zero,
                  )
                ),
                child: const Padding(
                  padding:  EdgeInsets.symmetric(vertical: 10.0),
                  child:  Text('Good Morning, what task can I do for you ? ',
                  style: TextStyle(
                    fontFamily: 'Cera Pro',
                    color: Pallete.mainFontColor,
                    fontSize: 25,
                  ),
                  ),
                ),
      
              ),
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 22,
      
                ),
             child: const Text(
                ' Here are a few features ',
                style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.mainFontColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
                ),
               Column(
                children: const [
                    FeatureBox(
                      color: Pallete.firstSuggestionBoxColor,
                      headerText: 'ChatGPT',
                      descriptionText: 
                      'A smarter way to stay organized and informed with chatGPT',
                      ),
                      FeatureBox(
                      color: Pallete.secondSuggestionBoxColor,
                      headerText: 'Dall-E',
                      descriptionText: 
                      'Get inspired and stay creative with your personal assistant powered by Dall-E',
                      ),
                      FeatureBox(
                      color: Pallete.thirdSuggestionBoxColor,
                      headerText: 'Smart Voice Assistant',
                      descriptionText: 
                      'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',
                      )
                ],
               ) 
          ],
        ),
      ), 
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: () {},
        child:const Icon(Icons.mic),
         ),
    );
  }
}
