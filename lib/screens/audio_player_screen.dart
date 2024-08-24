import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypackages_use/methods_and_constants/methods_and_constants.dart';

const description = 'A Flutter plugin to play multiple simultaneously audio files, works for Android, iOS, Linux, macOS, Windows, and web.';
const imgSrc = 'assets/images/audio.png';
const audioSrc = 'audios/note1.wav';
class AudioPlayerScreen extends StatefulWidget {
  const AudioPlayerScreen({super.key});

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  AudioPlayer player = AudioPlayer();
  Future<void> playSound(String audioSrc)async{
    player.play(AssetSource(audioSrc));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: const Text('Audio Player'),),
      body: buildBodyCenter(list: [
        SizedBox(height: 250,child: Image.asset(imgSrc,fit: BoxFit.fill,),),
        ElevatedButton.icon(onPressed: (){
          playSound(audioSrc);
        }, icon: const FaIcon(FontAwesomeIcons.play), label: const Text('Play'),),
        buildDescriptionTitle('#Description'),
        buildTextDescription(description),
        buildDataTable(),
        buildDescriptionTitle('#Installation'),
        buildInstallingPart(pubAdd: '\$ flutter pub add audioplayers',import: 'package:audioplayers/audioplayers.dart'),
      ]),
    );
  }
}
