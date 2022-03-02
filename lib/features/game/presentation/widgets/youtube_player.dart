import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyYoutubePlayer extends StatelessWidget {
  final String videoId;
  const MyYoutubePlayer({Key? key, required this.videoId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        hideControls: true,
      ),
    );

    return YoutubePlayer(
      controller: _controller,
      liveUIColor: Colors.amber,
    );
  }
}
