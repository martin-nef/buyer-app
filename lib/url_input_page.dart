import 'package:buyer_app/full_screen_container.dart';
import 'package:buyer_app/url_input/url_input_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'floating_add_button/floating_add_button.dart';
import 'url_input/url_sender.dart';
import 'url_input/url_source.dart';

class UrlInputPage extends StatefulWidget {
  UrlInputPage() : super();

  final String title = 'Enter Page URL';

  @override
  _UrlInputPageState createState() => _UrlInputPageState();
}

class _UrlInputPageState extends State<UrlInputPage> {
  final _urlSource = UrlSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingAddButton(
          () async => await UrlSender().send(_urlSource.state)),
      appBar: AppBar(
        title: Text('Project Buyer App'),
      ),
      body: FullScreenContainer(
        context: context,
        child: UrlInputForm(_urlSource),
      ),
    );
  }
}
