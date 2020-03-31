import 'package:flutter_comments/localizations.dart';
import 'package:flutter_comments/models/comment.dart';
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
/*     setState(() {
      comments.add(Comment(title: 'Item ' + comments.length.toString(), author: 'Anonymous'));
    }); */
  }

  Widget getContent() {
    if (this.comments.length > 0) {
      return ListView.builder(
        itemCount: this.comments.length,
        itemBuilder: (context, index) {
          final comment = this.comments[index];

          return ListTile(
            title: Text(comment.title),
            subtitle: Text(comment.created.toString()),
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
