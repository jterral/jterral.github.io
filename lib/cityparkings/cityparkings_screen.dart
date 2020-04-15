import 'package:flutter/material.dart';

import 'components/policy_widget.dart';

class CityParkingsScreen extends StatelessWidget {

  CityParkingsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    var privacyPolicyTheme = Theme.of(context).copyWith(
      textTheme: textTheme.copyWith(
        headline2: textTheme.headline2.copyWith(
          fontFamily: 'Impact',
          fontSize: 75
        ),
        headline3: textTheme.headline3.copyWith(
          fontFamily: 'Impact'
        ),
        headline5: textTheme.headline5.copyWith(
          fontFamily: 'Impact'
        )
      )
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('City Parkings'),
        elevation: 10.0,
      ),
      body: SingleChildScrollView(
        child: Theme(
          data: privacyPolicyTheme,
          child: PolicyWidget(),
        ) 
      )
    );
  }
}