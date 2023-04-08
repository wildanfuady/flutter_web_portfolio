import 'package:flutter_web/config/assets.dart';
import 'package:flutter_web/config/constants.dart';
import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import '../widgets/theme_inherited_widget.dart';

class AboutTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Wildan Fuady',
                textScaleFactor: 4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Web. Android. Flutter. Author. Trainer.',
                style: Theme.of(context).textTheme.caption,
                textScaleFactor: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextButton.icon(
  icon: SizedBox(
    width: 20,
    height: 20,
    child: Image.asset(Assets.github),
  ),
  label: Text('Github'),
  onPressed: () => html.window.open(Constants.PROFILE_GITHUB, 'wildanfuady'),
),
TextButton.icon(
  icon: SizedBox(
    width: 20,
    height: 20,
    child: Image.asset(Assets.twitter),
  ),
  label: Text('Twitter'),
  onPressed: () => html.window.open(Constants.PROFILE_TWITTER, 'wildanfuady'),
),
TextButton.icon(
  icon: SizedBox(
    width: 20,
    height: 20,
    child: Image.asset(
      ThemeSwitcher.of(context).isDarkModeOn ? Assets.medium : Assets.medium_light,
    ),
  ),
  label: Text('Medium'),
  onPressed: () => html.window.open(Constants.PROFILE_MEDIUM, 'wildanfuady'),
),


                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                 TextButton.icon(
  icon: SizedBox(
    width: 20,
    height: 20,
    child: Image.asset(Assets.github),
  ),
  label: Text('Github'),
  onPressed: () => html.window.open(Constants.PROFILE_GITHUB, 'wildanfuady'),
),
TextButton.icon(
  icon: SizedBox(
    width: 20,
    height: 20,
    child: Image.asset(Assets.twitter),
  ),
  label: Text('Twitter'),
  onPressed: () => html.window.open(Constants.PROFILE_TWITTER, 'wildanfuady'),
),
TextButton.icon(
  icon: SizedBox(
    width: 20,
    height: 20,
    child: Image.asset(
      ThemeSwitcher.of(context).isDarkModeOn ? Assets.medium : Assets.medium_light,
    ),
  ),
  label: Text('Medium'),
  onPressed: () => html.window.open(Constants.PROFILE_MEDIUM, 'wildanfuady'),
),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
