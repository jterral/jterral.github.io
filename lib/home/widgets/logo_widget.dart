import 'package:flutter/material.dart';


class Logo extends StatefulWidget {
  Logo({Key key}) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  _LogoState();

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(milliseconds: 2500),
      vsync: this
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceIn,
      reverseCurve: Curves.elasticOut,
    );

    _controller.reset();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        child: CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage('assets/images/me.jpg')
        ),
        opacity: Tween<double>(
           begin: 0.0,
           end: 1.0,
         )
         .animate(_animation),
      );
  }
}