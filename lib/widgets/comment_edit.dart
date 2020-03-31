import 'package:flutter_comments/localizations.dart';
import 'package:flutter_comments/models/comment.dart';
import 'package:flutter/material.dart';

class CommentEdit extends StatefulWidget {
  final Comment comment;

  CommentEdit({Key key, @required this.comment}) : super(key: key);

  @override
  createState() => new CommentEditState();
}

class CommentEditState extends State<CommentEdit> {
  final _formKey = GlobalKey<FormState>();

  void onSubmit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    Comment curComment = widget.comment;

    return Scaffold(
      appBar: AppBar(
        title: Text(Trans.of(context).titleEdit),
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
                  onSaved: (val) => setState(() => curComment.author = val),
                  initialValue: curComment.author,
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
                    onSaved: (val) => setState(() => curComment.title = val),
                    initialValue: curComment.title,
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
                    onSaved: (val) => setState(() => curComment.body = val),
                    initialValue: curComment.body,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: RaisedButton(
                    onPressed: () {
                      onSubmit();
                    },
                    child: Text(Trans.of(context).editSubmit),
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
