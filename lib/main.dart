import 'package:flutter_comments/localizations.dart';
import 'package:flutter_comments/widgets/comment_list.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CommentList(),
      localizationsDelegates: [
        TransDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      onGenerateTitle: (context) => Trans.of(context).title,
      supportedLocales: [
        const Locale('en'),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //
    );
  }
}
