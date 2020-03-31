import 'package:flutter_comments/utils/generate_id.dart';

class Comment {
  Comment() {
    final int now = DateTime.now().millisecondsSinceEpoch;

    this._id = generateId('comment-' + now.toString());
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
