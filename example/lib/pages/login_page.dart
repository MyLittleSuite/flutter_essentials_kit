import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  late TwoWayBinding<String> _email;
  late TwoWayBinding<String> _password;
  late Stream<bool> _isValid;

  LoginPage() {
    _email = TwoWayBinding<String>()
        .bindDataRule(TrimRule())
        .bindDataRule(RequiredRule())
        .bindDataRule(LowerCaseRule())
        .bindDataRule(EmailRule());

    _password = TwoWayBinding<String>().bindDataRule(RequiredRule());

    _isValid = TwoWayBindingUtils.validate([_email, _password]);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            TwoWayBindingBuilder<String>(
              binding: _email,
              builder: (context, controller, data, onChanged, error) =>
                  TextField(
                controller: controller,
                onChanged: onChanged,
                decoration: InputDecoration(
                  label: Text('Email'),
                  errorText: error?.localizedString(context),
                ),
              ),
            ),
            TwoWayBindingBuilder<String>(
              binding: _password,
              builder: (context, controller, data, onChanged, error) =>
                  TextField(
                controller: controller,
                onChanged: onChanged,
                obscureText: true,
                decoration: InputDecoration(
                  label: Text('Password'),
                  errorText: error?.localizedString(context),
                ),
              ),
            ),
            Divider(),
            StreamBuilder<bool>(
              stream: _isValid,
              builder: (context, snap) => ElevatedButton(
                child: Text('Sign in'),
                onPressed:
                    (snap.error == null && (snap.data ?? false)) ? () {} : null,
              ),
            ),
          ],
        ),
      );
}
