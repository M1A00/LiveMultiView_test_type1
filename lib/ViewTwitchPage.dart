import 'package:flutter/material.dart';
import 'package:flutter_twitch_player/flutter_twitch_player.dart';

class TwitchViewPage extends StatefulWidget {
  const TwitchViewPage({
    super.key,
    required this.TwitchId,
  });

  final String TwitchId;

  @override
  State<TwitchViewPage> createState() => _TwitchViewPageState();
}

class _TwitchViewPageState extends State<TwitchViewPage> {
  TwitchController controller = TwitchController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TwitchPlayerIFrame(
        controller: controller,
        channel: widget.TwitchId,
      ),
    );
  }
}
