import 'package:flutter_comments/localizations.dart';
import 'package:flutter_comments/models/comment.dart';
import 'package:flutter_comments/widgets/comment_detail.dart';
import 'package:flutter_comments/widgets/comment_edit.dart';
import 'package:flutter_comments/widgets/comment_list_empty.dart';
import 'package:flutter_comments/widgets/comment_new.dart';
import 'package:flutter/material.dart';

class CommentList extends StatefulWidget {
  @override
  createState() => new CommentListState();
}

class CommentListState extends State<CommentList> {
  List<Comment> comments = [];

  void _newComment() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CommentNew(comments: comments)),
    );
  }

  void _editComment(Comment comment) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CommentEdit(comment: comment)),
    );
  }

  void _viewComment(Comment comment) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CommentDetail(comment: comment)),
    );
  }

  Widget getContent() {
    if (comments.length > 0) {
      return ListView.separated(
        itemCount: comments.length,
        separatorBuilder: (context, index) => Divider(height: 1.0, color: Colors.grey),
        itemBuilder: (context, index) {
          final comment = comments[index];

          return ListTile(
            key: Key('listitem-' + comment.id),
            contentPadding: EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
            subtitle: Text(comment.author.isEmpty ? Trans.of(context).anonymous : comment.author),
            title: Text(comment.title),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.edit,
                    size: 20.0,
                    color: Colors.black54,
                  ),
                  onPressed: () {
                    _editComment(comment);
                  },
                ),
              ],
            ),
            onTap: () {
              _viewComment(comment);
            },
          );
        },
      );
    }

    return CommentListEmpty();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Trans.of(context).title),
      ),
      body: getContent(),
      floatingActionButton:
          FloatingActionButton(onPressed: _newComment, tooltip: Trans.of(context).addButton, child: Icon(Icons.add)),
    );
  }
}
