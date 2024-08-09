import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeViewPage extends StatefulWidget {
  const YoutubeViewPage({
    super.key,
    required this.YoutubeId,
  });

  final String YoutubeId;

  @override
  State<YoutubeViewPage> createState() => _YoutubeViewPageState();
}

class _YoutubeViewPageState extends State<YoutubeViewPage> {
  late final YoutubePlayerController controller;

  @override
  Widget build(BuildContext context) {
    controller = YoutubePlayerController.fromVideoId(
      videoId: widget.YoutubeId,
      params: const YoutubePlayerParams(
        mute: false,
        showControls: true,
        showFullscreenButton: true,
      ),
    );

    return Expanded(
      child: YoutubePlayer(
        controller: controller,
        aspectRatio: 16 / 9,
      ),
    );
  }
}
