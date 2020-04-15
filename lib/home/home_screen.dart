import 'dart:ui';

import 'package:flutter/material.dart';

import 'widgets/logo_widget.dart';
import 'widgets/profile_widget.dart';
import 'widgets/socials_widget.dart';


class HomeScreen extends StatelessWidget {

  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg-light.jpg'),
                fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.60),
          ),
          Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Logo(),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                    child: HelloWidget()
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: PresentationWidget()
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
                    child: DescriptionWidget()
                  ),
                  SocialsWidget()
                ]
              )
            )
          )
        ]
      )
    );
  }
}
