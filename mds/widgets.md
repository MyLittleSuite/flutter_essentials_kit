# widgets

<details>
    <summary>CourtesyWidget</summary>
    
    Create a widget for no data available, with material design style.
</details>

<details>
    <summary>Spacing</summary>
    
    Create a spacing between widgets.
</details>

<details>
    <summary>TwoWayBindingBuilder</summary>
    
    final binding = TwoWayBinding<String>();
    TwoWayBindingBuilder<String>(
      binding: binding,
      builder: (context, controller, data, onChanged, error) => TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          errorText: error?.localizedString(context),
        ),
      ),
    ),
</details>

