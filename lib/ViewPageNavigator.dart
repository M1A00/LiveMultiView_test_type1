import 'package:flutter/material.dart';
import 'ViewYoutubePage.dart';
import 'ViewTwitchPage.dart';
import 'InputIdPage.dart';

class ViewPageNavigator extends StatelessWidget {
  const ViewPageNavigator({
    super.key,
    required this.modelname,
  });

  final String modelname;

  void _pushViewPage(BuildContext context, String Id) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return modelname == 'Youtube' ?
          YoutubeViewPage(
              YoutubeId: Id
          ) :
          TwitchViewPage(
              TwitchId : Id
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: ((settings) {
        return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return InputIdPage(
                  hintText: modelname + 'ID',
                  onInput: (Id) {
                    _pushViewPage(context, Id);
                  }
              );
            }
        );
      }),
    );
  }
}
