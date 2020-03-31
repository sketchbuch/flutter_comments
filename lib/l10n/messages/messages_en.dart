// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(author, createdDate) => "${author} on ${createdDate}";

  static m1(updateddDate) => "Updated ${updateddDate}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "addButton" : MessageLookupByLibrary.simpleMessage("Add a new comment"),
    "anonymous" : MessageLookupByLibrary.simpleMessage("Anonymous"),
    "commentListEmpty" : MessageLookupByLibrary.simpleMessage("You currently have no comments"),
    "detailBy" : m0,
    "detailUpdatedOn" : m1,
    "editSubmit" : MessageLookupByLibrary.simpleMessage("Update Comment"),
    "fieldNewAuthorError" : MessageLookupByLibrary.simpleMessage("Please enter your name"),
    "fieldNewAuthorLabel" : MessageLookupByLibrary.simpleMessage("Your name"),
    "fieldNewAuthorPlaceholder" : MessageLookupByLibrary.simpleMessage("Who are you?"),
    "fieldNewBodyError" : MessageLookupByLibrary.simpleMessage("Please enter your comment"),
    "fieldNewBodyLabel" : MessageLookupByLibrary.simpleMessage("Comment"),
    "fieldNewTitleError" : MessageLookupByLibrary.simpleMessage("Please enter a title"),
    "fieldNewTitleLabel" : MessageLookupByLibrary.simpleMessage("Title"),
    "hello" : MessageLookupByLibrary.simpleMessage("Hello"),
    "newSubmit" : MessageLookupByLibrary.simpleMessage("Create Comment"),
    "title" : MessageLookupByLibrary.simpleMessage("Flutter Comments"),
    "titleEdit" : MessageLookupByLibrary.simpleMessage("Edit Comment"),
    "titleNew" : MessageLookupByLibrary.simpleMessage("New Comment")
  };
}
