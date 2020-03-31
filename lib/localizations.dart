import 'dart:async';
import 'l10n/messages/messages_all.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/l10n/source lib/localizations.dart
// flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n/messages lib/localizations.dart lib/l10n/source/intl_en.arb

class Trans {
  static Future<Trans> load(Locale locale) {
    final String name = locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new Trans();
    });
  }

  static Trans of(BuildContext context) {
    return Localizations.of<Trans>(context, Trans);
  }

  String get addButton {
    return Intl.message('Add a new comment', name: 'addButton');
  }

  String get anonymous {
    return Intl.message('Anonymous', name: 'anonymous');
  }

  String get commentListEmpty {
    return Intl.message('You currently have no comments',
        name: 'commentListEmpty', desc: 'The text displayed in the list if there are no comments');
  }

  String detailBy(String author, String createdDate) {
    return Intl.message(
      '$author on $createdDate',
      name: 'detailBy',
      args: [author, createdDate],
    );
  }

  String detailUpdatedOn(String updateddDate) {
    return Intl.message(
      'Updated $updateddDate',
      name: 'detailUpdatedOn',
      args: [updateddDate],
    );
  }

  String get fieldNewAuthorError {
    return Intl.message('Please enter your name', name: 'fieldNewAuthorError');
  }

  String get fieldNewAuthorLabel {
    return Intl.message('Your name', name: 'fieldNewAuthorLabel');
  }

  String get fieldNewAuthorPlaceholder {
    return Intl.message('Who are you?', name: 'fieldNewAuthorPlaceholder');
  }

  String get fieldNewTitleError {
    return Intl.message('Please enter a title', name: 'fieldNewTitleError');
  }

  String get fieldNewTitleLabel {
    return Intl.message('Title', name: 'fieldNewTitleLabel');
  }

  String get fieldNewBodyError {
    return Intl.message('Please enter your comment', name: 'fieldNewBodyError');
  }

  String get fieldNewBodyLabel {
    return Intl.message('Comment', name: 'fieldNewBodyLabel');
  }

  String get hello {
    return Intl.message('Hello', name: 'hello');
  }

  String get editSubmit {
    return Intl.message('Update Comment', name: 'editSubmit');
  }

  String get newSubmit {
    return Intl.message('Create Comment', name: 'newSubmit');
  }

  String get title {
    return Intl.message('Flutter Comments', name: 'title', desc: 'The list screen title');
  }

  String get titleNew {
    return Intl.message('New Comment', name: 'titleNew', desc: 'The new comment screen title');
  }

  String get titleEdit {
    return Intl.message('Edit Comment', name: 'titleEdit', desc: 'The edit comment screen title');
  }
}

class TransDelegate extends LocalizationsDelegate<Trans> {
  const TransDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en'].contains(locale.languageCode);
  }

  @override
  Future<Trans> load(Locale locale) {
    return Trans.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<Trans> old) {
    return false;
  }
}
