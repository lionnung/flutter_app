import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import '../generated/i18n.dart';

Widget buildView(PageState state, Dispatch dispatch, ViewService viewService) {
  // This widget is the root of your application.
  return MaterialApp(
    localizationsDelegates: [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
    ],
    supportedLocales: S.delegate.supportedLocales,
    localeResolutionCallback: S.delegate.resolution(fallback: Locale("zh", "TW")),
    title: 'Fish Redux Simple Example',
    theme: ThemeData(
      // This is the theme of your application.
      //
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.
      primarySwatch: Colors.blue,
    ),
    home: viewService.buildComponent('counter'),
  );
}
