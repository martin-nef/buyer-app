import 'package:buyer_app/single_input_form.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>(); 

class Emailinput extends Form {
  Emailinput()
      : super(
          key: _formKey,
          child: Expanded(
            child: Column(
              children: [
                FractionallySizedBox(
                  widthFactor: 100,
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'Email', hintText: 'Your Email Address'),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 100,
                  child: SubmitButton(() => print('form submitted')),
                ),
              ],
            ),
          ),
        );
}
