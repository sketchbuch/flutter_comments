import 'package:flutter_comments/localizations.dart';
import 'package:flutter/material.dart';

class CommentListEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(Trans.of(context).commentListEmpty),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
