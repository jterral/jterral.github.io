import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialsWidget extends StatelessWidget {

  Widget _getIcon(BuildContext context, String semanticLabel, IconData icon, String url) {
    var uniqueKey = 'fab_' + semanticLabel;
    return FloatingActionButton(
      key: ValueKey(uniqueKey),
      heroTag: uniqueKey,
      foregroundColor: Colors.grey[200],
      backgroundColor: Theme.of(context).primaryColor,
      hoverColor: Theme.of(context).accentColor,
      elevation: 20.0,
      child: FaIcon(
        icon,
        semanticLabel: semanticLabel
      ),
      onPressed: () {
        launch(url, forceSafariVC: false);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _getIcon(context, 'GitHub', FontAwesomeIcons.github, 'https://github.com/jterral'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: _getIcon(context, 'Twitter', FontAwesomeIcons.twitter, 'https://twitter.com/Jonathan_Trl')
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: _getIcon(context, 'LinkedIn', FontAwesomeIcons.linkedin, 'https://www.linkedin.com/in/jonathan-trl')
        ),
        _getIcon(context, 'Apple', FontAwesomeIcons.apple, 'https://apps.apple.com/in/developer/jonathan-terral/id1491355711'),
      ]
    );
  }
}
