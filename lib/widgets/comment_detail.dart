import 'package:flutter_comments/localizations.dart';
import 'package:flutter/material.dart';

class CommentDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Trans.of(context).title),
      ),
      body: Text('Comment Detail'),
    );
  }
}
