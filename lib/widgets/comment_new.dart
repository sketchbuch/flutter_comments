import 'package:flutter_comments/localizations.dart';
import 'package:flutter_comments/models/comment.dart';
import 'package:flutter/material.dart';

class CommentNew extends StatefulWidget {
  List<Comment> comments = [];

  CommentNew({Key key, @required this.comments}) : super(key: key);

  @override
  createState() => new CommentNewState();
}

class CommentNewState extends State<CommentNew> {
  final _formKey = GlobalKey<FormState>();
  final _comment = Comment(title: '', author: 'Anonymous');

  void onSubmit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      widget.comments.add(_comment);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Trans.of(context).titleNew),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: Trans.of(context).fieldNewAuthorPlaceholder,
                    labelText: Trans.of(context).fieldNewAuthorLabel,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return Trans.of(context).fieldNewAuthorError;
                    }
                    return null;
                  },
                  onSaved: (val) => setState(() => _comment.author = val),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: Trans.of(context).fieldNewTitleLabel,
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return Trans.of(context).fieldNewTitleError;
                      }
                      return null;
                    },
                    onSaved: (val) => setState(() => _comment.title = val),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: Trans.of(context).fieldNewBodyLabel,
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return Trans.of(context).fieldNewBodyError;
                      }
                      return null;
                    },
                    maxLines: 3,
                    onSaved: (val) => setState(() => _comment.body = val),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: RaisedButton(
                    onPressed: () {
                      onSubmit();
                    },
                    child: Text(Trans.of(context).newSubmit),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
