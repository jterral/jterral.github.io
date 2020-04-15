import 'package:flutter/material.dart';

import '../../components/text_link.dart';


class HelloWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello, World!",
      style: Theme.of(context).textTheme.headline3.copyWith(
        color: Colors.white
      )
    );
  }
}

class PresentationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Theme.of(context).textTheme.headline5.copyWith(
          color: Colors.white
        ),
        children: <TextSpan>[
          TextSpan(text: "I'm Jonathan, "),
          TextSpan(
            text: "sofware engineer",
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.italic,
              color: Theme.of(context).primaryColorLight
            )
          )
        ]
      )
    );

  }
}

class DescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Theme.of(context).textTheme.subtitle1.copyWith(
          color: Colors.white
        ),
        children: <TextSpan>[
          TextSpan(
            text: "Currently working as .NET Core backend developer in Azure environment "
          ),
          LinkTextSpan(
            text: "@HagerGroup",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            url: 'https://hagergroup.com',
          )
        ]
      )
    );
  }
}