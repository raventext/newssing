import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        "assets/splash.mp4",
    );
    setState(() {
    });
    // ...initialize().then((_)) {
    //   setState(() {});
    // })
    // ..setVolume(0.0);

_playVideo();
  }

  void _playVideo() async{
    _controller.play();
    await Future.delayed(const Duration(seconds: 3));

    Navigator.pushNamed(context, "/");
  }

  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(
          _controller,
        ),
        )
            : Container(),
      ),
    );
  }
}
