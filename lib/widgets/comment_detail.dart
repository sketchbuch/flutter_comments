import 'package:flutter_comments/localizations.dart';
import 'package:flutter_comments/models/comment.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final dateFormat = DateFormat('dd-MM-yyyy hh:mm');

String formatDate(int timestamp) {
  return dateFormat.format(DateTime.fromMillisecondsSinceEpoch(timestamp, isUtc: true));
}

class CommentDetail extends StatefulWidget {
  Comment comment;
  CommentDetail({Key key, @required this.comment}) : super(key: key);

  @override
  createState() => new CommentDetailState();
}

class CommentDetailState extends State<CommentDetail> {
  @override
  Widget build(BuildContext context) {
    Comment comment = widget.comment;
    String author = comment.author.isEmpty ? Trans.of(context).anonymous : comment.author;

    return Scaffold(
      appBar: AppBar(
        title: Text(comment.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  comment.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  Trans.of(context).detailBy(author, formatDate(comment.created)),
                  style: TextStyle(color: Colors.black45, fontSize: 20.0),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  comment.body,
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                Trans.of(context).detailUpdatedOn(formatDate(comment.created)),
                style: TextStyle(color: Colors.black54, fontSize: 10.0, fontStyle: FontStyle.italic),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
