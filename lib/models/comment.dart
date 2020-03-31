import 'package:flutter_comments/utils/generate_id.dart';
import 'package:flutter/material.dart';

class Comment {
  Comment({@required this.title, @required this.author}) {
    final int now = DateTime.now().millisecondsSinceEpoch;

    this._id = generateId(this.title);
    this.created = now;
    this.updated = now;
  }

  int created;
  int updated;
  String _id;
  String body;
  String title;
  String author;

  String get id {
    return this._id; // Return private property
  }
}
