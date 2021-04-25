import 'package:buyer_app/url_input/url_source.dart';
import 'package:flutter/material.dart';

class UrlInputForm extends Container {
  UrlInputForm(UrlSource urlSource)
      : super(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: 'Page Url'),
                  onChanged: (value) => urlSource.emit(value),
                ),
              ],
            ),
          ),
        );
}
