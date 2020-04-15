import 'package:flutter/material.dart';

class PolicyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2, // 20%
          child: Container(),
        ),
        Expanded(
          flex: 6, // 60%
          child: _getLegals(context),
        ),
        Expanded(
          flex: 2, // 20%
          child: Container(),
        )
      ],
    );
  }

  Widget _getLegals(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Text(
              "Privacy policy",
              style: Theme.of(context).textTheme.headline2
            )
          )
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
          child: Text(
            "Last update: April 15, 2020",
            style: Theme.of(context).textTheme.subtitle1
          )
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _getSectionTitle(context, "Who we are"),
              _getSectionText(context, "Our website address is: https://jterral.github.io.")
            ]
          )
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _getSectionTitle(context, "General information"),
              _getSectionText(context,
                "This Privacy Policy describes how your personal information is collected, used, and shared when you use City Parkings (the mobile application).\n\n" +
                "If you choose to use the application, then you agree to the collection and use of information in relation to this policy.\n" +
                "The Personal Information that we collect is used for providing and improving the Service.\n" +
                "We will not use or share your information with anyone except as described in this Privacy Policy")
            ]
          )
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _getSectionTitle(context, "Personal data"),
              _getSectionText(context, "For a better experience, while using our application, we may require you to provide us with certain personally identifiable information. The information that we request will be retained on your device and is not collected by our in any way."),
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _getSectionSubtitle(context, "Cookies"),
                    _getSectionText(context, "Cookies are data files that are placed on your device often include an anonymous unique identifier.")
                  ]
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _getSectionSubtitle(context, "Logs"),
                    _getSectionText(context, "Log files track actions occurring on the application, and collect data including your IP address, device type, operating system version, date/time stamps and other statistics.")
                  ]
                )
              )
            ]
          )
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _getSectionTitle(context, "Changes"),
              _getSectionText(context, "We may update this Privacy Policy from time to time in order to reflect, for example, changes to our practices or for other operational, legal or regulatory reasons. Thus, you are advised to review this page periodically for any changes. These changes are effective immediately after they are posted on this page."),
            ]
          )
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _getSectionTitle(context, "Contact us"),
              _getSectionText(context, "For more information about our privacy practices, if you have questions, or if you would like to make a complaint, please contact us by e-mail support@jootl.io.")
            ]
          )
        )
      ]
    );
  }

  Widget _getSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline3
      )
    );
  }

  Widget _getSectionSubtitle(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5
      )
    );
  }

  Widget _getSectionText(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText1,
      textAlign: TextAlign.justify
    );
  }
}
