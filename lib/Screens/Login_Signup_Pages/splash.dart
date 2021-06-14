import 'dart:async';
import 'package:FlutterNewApp/Screens/HomeMain.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_sound/flutter_sound.dart';


final _exampleAudioFilePathMP3 =
    'https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_700KB.mp3';

class Splash extends StatefulWidget {

  
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {


    
  
  FlutterSoundPlayer _mPlayer = FlutterSoundPlayer();
  //bool _mPlayerIsInited = false;
  // @override
  // void initState() {
    
  //   super.initState();
      
  //   _myPlayer.openAudioSession().then((value) {
  //     setState(() {
  //       _mPlayerIsInited = true;
  //     });
  //   });

    
  //   // flutterSound.thePlayer.startPlayer(fromURI: 'assets/audio/splash.mp3');//My splash.mp3 is inside the audio folder in assets folder

  //   Timer(
  //       Duration(minutes: 50),
  //       () => Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => HomeMain())));
  // }


  //  @override
  // void dispose() {
  //   // Be careful : you must `close` the audio session when you have finished with it.
  //   _myPlayer.closeAudioSession();
  //   _myPlayer = null;
  //   super.dispose();
  // }


  bool _mPlayerIsInited = false;

  @override
  void initState() {
    super.initState();

    _mPlayer.openAudioSession().then((value) {
      setState(() {
        _mPlayerIsInited = true;
      });
    });

    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeMain())));
  }

  @override
  void dispose() {
    stopPlayer();
    // Be careful : you must `close` the audio session when you have finished with it.
    _mPlayer.closeAudioSession();
    _mPlayer = null;

    super.dispose();
  }

  // -------  Here is the code to playback a remote file -----------------------

  void play() async {
    await _mPlayer.startPlayer(
        fromURI: _exampleAudioFilePathMP3,
        
        codec: Codec.mp3,
      );
    
  }

  Future<void> stopPlayer() async {
    if (_mPlayer != null) {
      await _mPlayer.stopPlayer();
    }
  }

  

  @override
  
  Widget build(BuildContext context) {
    play();
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
        Center(
          child: AnimatedTextKit(
            totalRepeatCount: 1,
            //repeatForever: true,
            animatedTexts: [
            TyperAnimatedText(
              'Tofee Ride',
              //speed: Duration(milliseconds: 50),
              textStyle: TextStyle(
                fontFamily: 'Ultra-Regular',
                color: Colors.pink[600],
                fontSize: 30,
              )
              ),  
          ]),
        ),

        Center
        (child:AnimatedTextKit(
          totalRepeatCount: 1,
          //repeatForever: true,
          animatedTexts: [
          TyperAnimatedText('Learning App for classes I - IV')
        ]) ,)

      ],),
      
    );

  
    
  }
  
}
