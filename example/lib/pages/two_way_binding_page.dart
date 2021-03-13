import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';

// ignore: must_be_immutable
class TwoWayBindingPage extends StatelessWidget {
  TwoWayBinding<String> _binding;
  TwoWayBinding<String> _sameBinding;

  TwoWayBindingPage() {
    _binding = TwoWayBinding<String>()
        .bindDataRule(TrimRule())
        .bindDataRule(RequiredRule())
        .bindDataRule(SizeRule(10));
    _sameBinding = TwoWayBinding<String>().bindDataRule2(_binding, SameRule());
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            TwoWayBindingBuilder<String>(
              binding: _binding,
              builder: (context, controller, data, onChanged, error) =>
                  TextField(
                controller: controller,
                onChanged: onChanged,
                decoration: InputDecoration(
                  errorText: error?.localizedString(context),
                ),
              ),
            ),
            Container(height: 16),
            TwoWayBindingBuilder<String>(
              binding: _binding,
              builder: (context, controller, data, onChanged, error) =>
                  Text(data ?? 'None'),
            ),
            Container(height: 16),
            TwoWayBindingBuilder<String>(
              binding: _sameBinding,
              builder: (context, controller, data, onChanged, error) =>
                  TextField(
                controller: controller,
                onChanged: onChanged,
                decoration: InputDecoration(
                  errorText: error?.localizedString(context),
                ),
              ),
            ),
          ],
        ),
      );
}
