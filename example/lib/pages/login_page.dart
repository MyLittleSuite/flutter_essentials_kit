import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TwoWayBinding<String> _email;
  late TwoWayBinding<String> _password;
  late Stream<bool> _isValid;

  bool _isLoading = false;

  _LoginPageState() {
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _emailField(context),
                _passwordField(context),
                Divider(),
                _signInButton(context),
              ],
            ),
          ),
        ),
      );

  Widget _emailField(BuildContext context) => TwoWayBindingBuilder<String>(
        binding: _email,
        builder: (context, controller, data, onChanged, error) => TextField(
          controller: controller,
          onChanged: onChanged,
          decoration: InputDecoration(
            label: Text('Email'),
            errorText: error?.localizedString(context),
          ),
        ),
      );

  Widget _passwordField(BuildContext context) => TwoWayBindingBuilder<String>(
        binding: _password,
        builder: (context, controller, data, onChanged, error) => TextField(
          controller: controller,
          onChanged: onChanged,
          obscureText: true,
          decoration: InputDecoration(
            label: Text('Password'),
            errorText: error?.localizedString(context),
          ),
        ),
      );

  Widget _signInButton(BuildContext context) => !_isLoading
      ? StreamBuilder<bool>(
          stream: _isValid,
          builder: (context, snap) {
            print("STREAM_SNAP: $snap");

            return ElevatedButton(
              child: Text('Sign in'),
              onPressed: (snap.error == null && (snap.data ?? false))
                  ? () async {
                      setState(() {
                        _isLoading = true;
                      });

                      await Future.delayed(Duration(seconds: 1));

                      setState(() {
                        _isLoading = false;
                      });
                    }
                  : null,
            );
          },
        )
      : Center(
          child: CircularProgressIndicator(),
        );
}
